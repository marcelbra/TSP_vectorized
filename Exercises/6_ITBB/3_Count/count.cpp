  /// Counts number of 0 entries in a random array
  /// 
  /// Authors: I.Kulakov; M.Zyzak
  /// use "g++ count.cpp -O3 -ltbb; ./a.out" to run
  
  
  /// TODO parallelize using two methods: via atomic operations and via spin_mutex
  
#include <stdio.h>
#include "tbb/parallel_for.h"
#include "tbb/blocked_range.h"
#include "tbb/task_scheduler_init.h"
#include "tbb/atomic.h"
#include "tbb/spin_mutex.h"
using namespace tbb;

#include "../../../TStopwatch.h"

#include <cmath>
#include <stdlib.h> // rand

const int N = 2000000;
int counter = 0;
int counterParM; // parallelization using mutex TODO
int counterParA; // parallelization using atomic TODO


int ComplicatedFunction( float x ){ // just to simulate some time-consuming calculations, which can be parallelized
  return (int)( cos(sin(x*3.14)) * 10 - 5 );
}

class ApplyTBBA{
  const float  * const a;
  
public:
  void operator()(const blocked_range<long unsigned int> &range, int cpuId = -1) const {
    // TODO parallelization via atomic
  }

  ApplyTBBA(const float * const a_):a(a_){}
  ~ApplyTBBA(){}
};

class ApplyTBBM{
  const float * const a;
  
public:
  void operator()(const blocked_range<long unsigned int> &range, int cpuId = -1) const {
    for(int i = range.begin(); i != range.end(); ++i){
        // TODO parallelization via mutex
    }
  }

  ApplyTBBM(const float * const a_):a(a_){}
  ~ApplyTBBM(){}
};


int main ()
{
  float a[N];
  
    // fill classes by random numbers
  for( int i = 0; i < N; i++ ) {
    a[i] = (float(rand())/float(RAND_MAX)); // put a random value, from 0 to 1
  }
  
  TStopwatch timer;
  for(int i = 0; i != N; ++i){
    if (ComplicatedFunction(a[i]) == 0) counter++;
  }
  timer.Stop();
  
  float timeScalar = timer.RealTime()*1000;
  
//   task_scheduler_init init(1); // run 1 thread only
  
    // parallelization via atomic
  timer.Start();

  timer.Stop();
  
  float timeParA = timer.RealTime()*1000;
  
    // parallelization via mutex
  timer.Start();

  timer.Stop();
  
  float timeParM = timer.RealTime()*1000;
  
  printf( " Scalar counter:     %d Time: %f ms. \n TBB atomic counter: %d Time: %f ms. \n TBB mutex counter:  %d Time: %f ms. \n ",counter, timeScalar, counterParA, timeParA, counterParM, timeParM );
}  





