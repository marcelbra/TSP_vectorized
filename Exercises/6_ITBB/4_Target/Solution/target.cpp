  /// Calculate damage of a target shelled with shots. Each shot affects 5 cells.
  ///
  /// @authors: I.Kulakov; M.Zyzak
  /// @e-mail I.Kulakov@gsi.de; M.Zyzak@gsi.de
  /// 
  /// use "g++ target.cpp -O3 -o target -lVc -ltbb; ./target" to run
  
#include <stdio.h>
#include "tbb/parallel_for.h"
#include "tbb/blocked_range.h"
#include "tbb/task_scheduler_init.h"
#include "tbb/spin_mutex.h"
using namespace tbb;

#include "../../../../TStopwatch.h"

#include <cmath>
#include <stdlib.h> // rand

const int Size = 5;
const int N = 1000;
  
struct TShot {
  int x,y;
  float spread;
};

const float PI = 3.1415926f;

float Response( float x, float spread ) {
  int s = spread;
  for( int i = 0; i < 100000; ++i ) s = sin(s); // simulate complicated computations, which would be in a real life response function
  return 1/spread/sqrt(2*PI)*exp(-0.5*x*x/spread/spread)*s;
}

void Update( float& xmm, float& xlm, float& xml, float& xrm, float& xmr, float spread ) {
  xmm += Response( 0, spread );
  float res1 = Response( 1, spread );
  xlm += res1;
  xml += res1;
  xrm += res1;
  xmr += res1;
}

spin_mutex mutexes[Size][Size];

class ApplyTBB{
  TShot *shots;
  float (*target)[Size];
public:
  
  void operator()(const blocked_range<long unsigned int> &range, int cpuId = -1) const {
    for(int i = range.begin(); i != range.end(); ++i) {
      const int x = shots[i].x;
      const int y = shots[i].y;
      const float spread = shots[i].spread;
      {
#if 0
        spin_mutex::scoped_lock lock0(mutexes[x][y]);
        spin_mutex::scoped_lock lock1(mutexes[x-1][y]);
        spin_mutex::scoped_lock lock2(mutexes[x][y-1]);
        spin_mutex::scoped_lock lock3(mutexes[x+1][y]);
        spin_mutex::scoped_lock lock4(mutexes[x][y+1]);
#else
        spin_mutex::scoped_lock lock1(mutexes[x-1][y]);
        spin_mutex::scoped_lock lock2(mutexes[x][y-1]);
        spin_mutex::scoped_lock lock0(mutexes[x][y]);
        spin_mutex::scoped_lock lock4(mutexes[x][y+1]);
        spin_mutex::scoped_lock lock3(mutexes[x+1][y]);
#endif
        Update( target[x][y], target[x-1][y], target[x][y-1], target[x+1][y], target[x][y+1], spread );
      }
    }
  }

  ApplyTBB(float target_[Size][Size], TShot *shots_):target(target_),shots(shots_){}
  ~ApplyTBB(){}
};

bool CompareResults( float a1[Size][Size], float a2[Size][Size] ) {
  bool ok = 1;
  for( int i = 0; i < Size; i++ )
    for( int i2 = 0; i2 < Size; i2++ ) {
      ok &= (a1[i][i2] == a2[i][i2]);
      //printf( " %d %d : %f - %f \n", i, i2, a1[i][i2], a2[i][i2] );
    }
  return ok;
}

int main ()
{
  float target[Size][Size];
  TShot shots[N];
  
    // prepare data
  for( int i = 0; i < Size; i++ )
    for( int i2 = 0; i2 < Size; i2++ )
      target[i][i2] = 0;
    
  for( int i = 0; i < N; i++ ) {
    shots[i].x = float(rand())/float(RAND_MAX)*(Size-2) + 1; // put a random value, from 1 to Size-1
    shots[i].y = float(rand())/float(RAND_MAX)*(Size-2) + 1;
    shots[i].spread = float(rand())/float(RAND_MAX)*8 + 1; // from 1 to 10
  }
  
  TStopwatch timer;
  for( int i = 0; i != N; ++i ) {
    const int x = shots[i].x;
    const int y = shots[i].y;
    const float spread = shots[i].spread;
    Update( target[x][y], target[x-1][y], target[x][y-1], target[x+1][y], target[x][y+1], spread );
  }
  timer.Stop();
    
  float targetScalar[Size][Size];
      // save result
  for( int i = 0; i < Size; i++ )
    for( int i2 = 0; i2 < Size; i2++ )
      targetScalar[i][i2] = target[i][i2];
    
  float timeScalar = timer.RealTime()*1000;
  
  printf( " Scalar Time: %f ms. \n", timeScalar );
  
    // prepare data
  for( int i = 0; i < Size; i++ )
    for( int i2 = 0; i2 < Size; i2++ )
      target[i][i2] = 0;
  
//   task_scheduler_init init(1); // run 1 thread only
  
  timer.Start();
  parallel_for( blocked_range<size_t>(0,N), ApplyTBB(target,shots) );
  timer.Stop();
  
  float timePar = timer.RealTime()*1000;
  
  printf( " TBB Time:    %f ms. \n", timePar );
    
  if ( CompareResults(targetScalar, target) )
    printf( " Results are the same \n " );
  else
    printf( " Results are NOT the same: ERROR \n " );
}  





