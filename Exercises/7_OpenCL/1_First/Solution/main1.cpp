// source taken from: http://www.thebigblob.com/getting-started-with-opencl-and-gpu-computing/#comment-2575

  ///
  /// changed by: I.Kulakov; M.Zyzak
  /// @e-mail I.Kulakov@gsi.de; M.Zyzak@gsi.de
  /// 
  /// use "g++ main.cpp -o host -O3 -lOpenCL; ./host" to run

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
using namespace std;

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

int main(void) {
    // Create the two input vectors
    int  i;
    const int LIST_SIZE = 1023;
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

    fp = fopen("vector_add_kernel.cl", "r");
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

    // Create an OpenCL context
    cl_context context = clCreateContext( NULL, 1, &device_id, NULL, NULL, &ret);

    // Create a command queue
    cl_command_queue command_queue = clCreateCommandQueue(context, device_id, 0, &ret);

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
    ret = clBuildProgram(program, 1, &device_id, NULL, NULL, NULL);
    checkErr(ret, "clBuildProgram");
    
    // Create the OpenCL kernel
    cl_kernel kernel = clCreateKernel(program, "vector_add", &ret);

    // Set the arguments of the kernel
    ret = clSetKernelArg(kernel, 0, sizeof(cl_mem), (void *)&a_mem_obj);
    ret = clSetKernelArg(kernel, 1, sizeof(cl_mem), (void *)&b_mem_obj);
    ret = clSetKernelArg(kernel, 2, sizeof(cl_mem), (void *)&c_mem_obj);

    // Execute the OpenCL kernel on the list
    size_t global_item_size = LIST_SIZE; // Process the entire lists
    size_t local_item_size = 1; // Process in groups of 1
    
    ret = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, 
            &global_item_size, &local_item_size, 0, NULL, NULL);
    checkErr(ret, "clEnqueueNDRangeKernel");
    
    // Read the memory buffer C on the device to the local variable C
    DataType *C = (DataType*)malloc(sizeof(DataType)*LIST_SIZE);
    ret = clEnqueueReadBuffer(command_queue, c_mem_obj, CL_TRUE, 0, 
            LIST_SIZE * sizeof(DataType), C, 0, NULL, NULL);
    checkErr(ret, "clEnqueueReadBuffer");
    
    // Display the result to the screen
    for(i = 0; i < LIST_SIZE; i++)
        cout << A[i] << " + " <<  B[i] << " = " << C[i] << endl;

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

