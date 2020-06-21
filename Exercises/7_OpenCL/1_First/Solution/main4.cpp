// source taken from: http://www.thebigblob.com/getting-started-with-opencl-and-gpu-computing/#comment-2575

  ///
  /// changed by: I.Kulakov; M.Zyzak
  /// @e-mail I.Kulakov@gsi.de; M.Zyzak@gsi.de
  /// 
  /// use "g++ main.cpp -o host -O3 -lOpenCL; ./host" to run

#define SIMD // switch between vectorized and not vectorized versions
  
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <cmath>
using namespace std;

#include "../TStopwatch.h"

#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#endif

#define MAX_SOURCE_SIZE (0x100000)

inline void
checkErr(cl_int err, const char * name)
{
    if (err != CL_SUCCESS) {
        std::cerr << "ERROR: " << name
                 << " (" << err << ")" << std::endl;
       exit(EXIT_FAILURE);
    }
}

typedef float DataType;

void scalar_add( DataType A,  DataType B,  DataType C) {

      // Do the operation
    C = A + B;
}


int main(void) {
    // Create the two input vectors
    int  i;
    const int LIST_SIZE = 1024;
    DataType *A = (DataType*)malloc(sizeof(DataType)*LIST_SIZE);
    DataType *B = (DataType*)malloc(sizeof(DataType)*LIST_SIZE);
    for(i = 0; i < LIST_SIZE; i++) {
      A[i] = i;
      B[i] = LIST_SIZE - i;
    }

    // Load the kernel source code into the array source_str
    FILE *fp;
    char *source_str;
    size_t source_size;

#ifdef SIMD
    fp = fopen("vector_add_kernel2.cl", "r");
#else
    fp = fopen("vector_add_kernel.cl", "r");
#endif
    if (!fp) {
        fprintf(stderr, "Failed to load kernel.\n");
        exit(1);
    }
    source_str = (char*)malloc(MAX_SOURCE_SIZE);
    source_size = fread( source_str, 1, MAX_SOURCE_SIZE, fp);
    fclose( fp );

    // Get platform and device information
    cl_platform_id platform_id = NULL;
    cl_device_id device_id = NULL;   
    cl_uint ret_num_devices;
    cl_uint ret_num_platforms;
    cl_int ret = clGetPlatformIDs(1, &platform_id, &ret_num_platforms);
//     ret = clGetDeviceIDs( platform_id, CL_DEVICE_TYPE_ALL, 1, 
//             &device_id, &ret_num_devices);  
    checkErr(ret, "clGetPlatformIDs");
    
    ret = clGetDeviceIDs( platform_id, CL_DEVICE_TYPE_CPU, 1, 
            &device_id, &ret_num_devices);
    checkErr(ret, "clGetDeviceIDs");

    cl_uint num_devices_ret;
    cl_device_id  out_devices[80];
    /// CL_DEVICE_PARTITION_EQUALLY
    const cl_device_partition_property props[] = {CL_DEVICE_PARTITION_EQUALLY, 2, 0};
    ret = clCreateSubDevices ( device_id, props, 80 , out_devices , &num_devices_ret );
    checkErr(ret, "clCreateSubDevices");
    /// CL_DEVICE_PARTITION_BY_COUNTS
//     const cl_device_partition_property props[] = {CL_DEVICE_PARTITION_BY_COUNTS, 1, 1, CL_DEVICE_PARTITION_BY_COUNTS_LIST_END, 0};
//     ret = clCreateSubDevices ( device_id, props, 80 , out_devices , &num_devices_ret );
//     checkErr(ret, "clCreateSubDevices");
    ///CL_DEVICE_PARTITION_BY_AFFINITY_DOMAIN
//     const cl_device_partition_property props[] = {CL_DEVICE_PARTITION_BY_AFFINITY_DOMAIN, CL_DEVICE_AFFINITY_DOMAIN_L1_CACHE, 0};
//     ret = clCreateSubDevices ( device_id, props, 80 , out_devices , &num_devices_ret );
//     checkErr(ret, "clCreateSubDevices");
    
    // Create an OpenCL context
    cl_context context = clCreateContext( NULL, 1, &device_id, NULL, NULL, &ret);

    // Create a command queue
    // cl_command_queue command_queue = clCreateCommandQueue(context, out_devices[0], 0, &ret);
    cl_command_queue command_queue = clCreateCommandQueue(context, out_devices[0], CL_QUEUE_PROFILING_ENABLE, &ret);

    // Create memory buffers on the device for each vector 
    cl_mem a_mem_obj = clCreateBuffer(context, CL_MEM_READ_ONLY, 
            LIST_SIZE * sizeof(DataType), NULL, &ret);
    cl_mem b_mem_obj = clCreateBuffer(context, CL_MEM_READ_ONLY,
            LIST_SIZE * sizeof(DataType), NULL, &ret);
    cl_mem c_mem_obj = clCreateBuffer(context, CL_MEM_WRITE_ONLY, 
            LIST_SIZE * sizeof(DataType), NULL, &ret);

    // Copy the lists A and B to their respective memory buffers
    ret = clEnqueueWriteBuffer(command_queue, a_mem_obj, CL_TRUE, 0,
            LIST_SIZE * sizeof(DataType), A, 0, NULL, NULL);
    checkErr(ret, "clEnqueueWriteBuffer");
    ret = clEnqueueWriteBuffer(command_queue, b_mem_obj, CL_TRUE, 0, 
            LIST_SIZE * sizeof(DataType), B, 0, NULL, NULL);
    checkErr(ret, "clEnqueueWriteBuffer");
    
    // Create a program from the kernel source
    cl_program program = clCreateProgramWithSource(context, 1, 
            (const char **)&source_str, (const size_t *)&source_size, &ret);

    // Build the program
    ret = clBuildProgram(program, 1, &out_devices[0], NULL, NULL, NULL);
    checkErr(ret, "clBuildProgram");
    
    // Shows the log
    char* build_log;
    size_t log_size;
    // First call to know the proper size
    clGetProgramBuildInfo(program, out_devices[0], CL_PROGRAM_BUILD_LOG, 0, NULL, &log_size);
    build_log = new char[log_size+1];
    // Second call to get the log
    clGetProgramBuildInfo(program, out_devices[0], CL_PROGRAM_BUILD_LOG, log_size, build_log, NULL);
    build_log[log_size] = '\0';
    cout << build_log << endl;
    delete[] build_log;
      
    // Create the OpenCL kernel
    cl_kernel kernel = clCreateKernel(program, "vector_add", &ret);

    // Set the arguments of the kernel
    ret = clSetKernelArg(kernel, 0, sizeof(cl_mem), (void *)&a_mem_obj);
    ret = clSetKernelArg(kernel, 1, sizeof(cl_mem), (void *)&b_mem_obj);
    ret = clSetKernelArg(kernel, 2, sizeof(cl_mem), (void *)&c_mem_obj);

    // Execute the OpenCL kernel on the list
#ifdef SIMD
    size_t global_item_size = LIST_SIZE/4; // Process the entire lists
#else
    size_t global_item_size = LIST_SIZE;
#endif
    size_t local_item_size = 64; // Process in groups of 64
    
    cl_event event;
    
    ret = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, 
            &global_item_size, &local_item_size, 0, NULL, &event);
    checkErr(ret, "clEnqueueNDRangeKernel");
    
    ret = clWaitForEvents(1 , &event);
    checkErr(ret, "clWaitForEvents");
    
    // Read the memory buffer C on the device to the local variable C
    DataType *C = (DataType*)malloc(sizeof(DataType)*LIST_SIZE);
    ret = clEnqueueReadBuffer(command_queue, c_mem_obj, CL_TRUE, 0, 
            LIST_SIZE * sizeof(DataType), C, 0, NULL, NULL);
    checkErr(ret, "clEnqueueReadBuffer");
    
    cl_ulong time_start, time_end;
    double total_time;
    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start), &time_start, NULL);
    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end, NULL);
    total_time = time_end - time_start;
    printf("Parallel time = %0.3f ms\n", (total_time / 1000000.0) );
 
    // Display the result to the screen
//     for(i = 0; i < LIST_SIZE; i++)
//         cout << A[i] << " + " <<  B[i] << " = " << C[i] << endl;

    TStopwatch timer;
    for(i = 0; i < LIST_SIZE; i++)
       scalar_add( A[i], B[i], C[i] );
    timer.Stop();
    
    printf("Scalar time = %0.3f ms\n", timer.RealTime()*1000 );
    
    // Clean up
    ret = clFlush(command_queue);
    ret = clFinish(command_queue);
    ret = clReleaseKernel(kernel);
    ret = clReleaseProgram(program);
    ret = clReleaseMemObject(a_mem_obj);
    ret = clReleaseMemObject(b_mem_obj);
    ret = clReleaseMemObject(c_mem_obj);
    ret = clReleaseCommandQueue(command_queue);
    ret = clReleaseContext(context);
    free(A);
    free(B);
    free(C);
    return 0;
}

