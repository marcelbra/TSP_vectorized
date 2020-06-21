void Add(float4 &a, float4 &b, float4 &sum)
{
  sum = a+b;
}

__kernel void vector_add(__global float *A, __global float *B, __global float *C) {
    
    // Get the index of the current element
    int i = get_global_id(0);

    // get the i-th group of 4
    float4 a = vload4(i, A);
    float4 b = vload4(i, B);

    float4 sum;
    Add(a,b,sum);

    // store a+b to 4*i-th element
    vstore4( sum, i, C );
}
