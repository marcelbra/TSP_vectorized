/*
This program will numerically compute the integral of

                  4/(1+x*x) 
  
from 0 to 1.  The value of this integral is pi -- which 
is great since it gives us an easy way to check the answer.

The is the original sequential program.  It uses the timer
from the OpenMP runtime library

History: Written by Tim Mattson, 11/99.

compile and run:
for CPU
  SSE:
  icc pi.cpp -inline-forceinline -std=c++11 -O3 -g -msse -openmp -DHOST -o piSSE -lVc
  ./piSSE #nThreads
  AVX:
  icc pi_solution.cpp -inline-forceinline -std=c++11 -O3 -g -mavx -openmp -DHOST -o piAVX -lVc
  ./piAVX #nThreads
  
for Xeon Phi
  icc pi.cpp -inline-forceinline -std=c++11 -O3 -g -mmic -openmp -L/home/akishina/Vc/Vc/build/lib -o piMIC -lVc_MIC
  . runMIC.sh #nThreads
*/
#include <iostream>
#include <omp.h>
#include "pthread.h"
#include "errno.h"
#define handle_error_en(en, msg) do { errno = en; perror(msg); exit(EXIT_FAILURE); } while (0)

#include <Vc/Vc>
using namespace Vc;

const int vecN = float_v::Size;

void CalculatePi(int nThreads, double &pi, double &time)
{
  long i;
  pi=0;
  float x, sum = 0.0;
  double start_time;
#ifdef HOST
  long num_steps = 10000000 * nThreads;
#else
  long num_steps = 10000000 * nThreads;
#endif
  float step = 1.0/(float) num_steps;
         
  start_time = omp_get_wtime();

#pragma omp parallel for reduction(+ : sum) private(i,x) num_threads(nThreads)
  for (i=1;i<= num_steps; i++){
    x = (i-0.5)*step;
    sum = sum + 4.0/(1.0+x*x);
  }

  pi = step * sum;
  time = omp_get_wtime() - start_time;
  time /= nThreads;
}

void CalculatePiSIMD(int nThreads, double &pi, double &time)
{
  long i;
  pi=0;
  float x, sum = 0.0;
  double start_time;
#ifdef HOST
  long num_steps = 10000000 * nThreads;
#else
  long num_steps = 10000000 * nThreads;
#endif
  float step = 1.0/(float) num_steps;
         
  start_time = omp_get_wtime();

#pragma omp parallel for reduction(+ : sum) private(i,x) num_threads(nThreads)
  for (i=1;i<= num_steps; i++){
    x = (i-0.5)*step;
    sum = sum + 4.0/(1.0+x*x);
  }

  pi = step * sum;
  time = omp_get_wtime() - start_time;
  time /= nThreads;
}

int main (int argc, char *argv[])
{
  int nThreads = 1;

  if(argc == 2)
  {
    nThreads = atoi( argv[1] );
  }

#ifdef HOST
  int threadNumberToCpuMap[32];
  for (int i=0; i<16; i++){
    threadNumberToCpuMap[2*i+0] = i;
    threadNumberToCpuMap[2*i+1] = i+16;
  }
#else
  int threadNumberToCpuMap[240];
  for (int i=1; i<240; i++){
    threadNumberToCpuMap[i-1] = i;
  }
  threadNumberToCpuMap[239] = 0;
#endif
  
  double piScalar=0, timeScalar = 0;
  double piSIMD=0, timeSIMD = 0;
  double piParallel=0, timeParallel = 0;

  CalculatePi(1,piScalar,timeScalar);
  CalculatePiSIMD(1,piSIMD,timeSIMD);
  CalculatePiSIMD(nThreads,piParallel,timeParallel);

  std::cout << "Scalar:   pi is " << piScalar << " in " << timeScalar << " seconds" << std::endl;
  std::cout << "SIMD:     pi is " << piSIMD << " in " << timeSIMD << " seconds, speedup is " << (timeScalar/timeSIMD) << std::endl;
  std::cout << "Parallel: pi is " << piParallel << " in " << timeParallel << " seconds, speedup is " << (timeScalar/timeParallel) << std::endl;
}  





