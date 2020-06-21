/*
This program will numerically compute the integral of

                  4/(1+x*x) 
  
from 0 to 1.  The value of this integral is pi -- which 
is great since it gives us an easy way to check the answer.

Authors: I.Kulakov; M.Zyzak
Primary Authors: Written by Tim Mattson, 11/99.

*/
  /// use "g++ pi.cpp -O3 -o pi -lVc -ltbb; ./pi" to run
  
#include <stdio.h>
#include "tbb/parallel_reduce.h"
#include "tbb/blocked_range.h"
#include "tbb/task_scheduler_init.h"
using namespace tbb;

#include "../../../../TStopwatch.h"

static long num_steps = 2000000000;
double step;

class ApplyTBB{

  double fStep;
  
public:
  double sum;

  void operator()(const blocked_range<long unsigned int> &range, int cpuId = -1) {
    for(int i = range.begin(); i != range.end(); ++i){
      const double x = (i-0.5)*step;
      sum += 4.0/(1.0+x*x);
    }
  }
  
  ApplyTBB( ApplyTBB& x, split ) : fStep(x.fStep), sum(0) {}
  void join( const ApplyTBB& y ) { sum += y.sum;}

  ApplyTBB(double step_):fStep(step_), sum(0){}
  ~ApplyTBB(){}
};


int main ()
{
  int i;
  double x, pi, sum = 0.0;
  double start_time, run_time;

  step = 1.0/(double) num_steps;
  
//   task_scheduler_init init(1); // run 1 thread only
  
  TStopwatch timer;

  ApplyTBB at(step);
  parallel_reduce( blocked_range<size_t>(1,num_steps), at );

  pi = step * at.sum;
  
  timer.Stop();
  run_time = timer.RealTime();
  printf("\n pi with %d steps is %f in %f seconds \n",num_steps,pi,run_time);
}  





