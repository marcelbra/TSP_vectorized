/*
This program will numerically compute the integral of

                  4/(1+x*x) 
  
from 0 to 1.  The value of this integral is pi -- which 
is great since it gives us an easy way to check the answer.

Authors: I.Kulakov; M.Zyzak
Primary Authors: Written by Tim Mattson, 11/99.

*/
  /// use "g++ pi.cpp -O3 -lVc -ltbb; ./a.out" to run
  
  /// TODO: parallelize
  
#include <stdio.h>

#include "../../../TStopwatch.h"

static long num_steps = 2000000000;
double step;

int main ()
{
  int i;
  double x, pi, sum = 0.0;
  double start_time, run_time;

  step = 1.0/(double) num_steps;
  
//   task_scheduler_init init(1); // run 1 thread only
  
  TStopwatch timer;

  // TODO parallelize the loop
  for(int i = 1; i != num_steps; ++i){
    const double x = (i-0.5)*step;
    sum += 4.0/(1.0+x*x);
  }

  pi = step * sum;
  
  timer.Stop();
  run_time = timer.RealTime();
  printf("\n pi with %d steps is %f in %f seconds \n",num_steps,pi,run_time);
}  





