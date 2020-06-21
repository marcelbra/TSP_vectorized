  /// Element-wise square root of matrix
  ///
  /// @authors: I.Kulakov; M.Zyzak
  /// @e-mail I.Kulakov@gsi.de; M.Zyzak@gsi.de
  /// 
  /// use "g++ Matrix.cpp -O3 -lVc -ltbb; ./a.out" to run

  /// TODO parallelize SIMD-version using parallel_for
  
#include "tbb/parallel_for.h"
#include "tbb/blocked_range.h"
using namespace tbb;

#include "../../../TStopwatch.h"

#include <Vc/Vc>
using namespace Vc;

#include <iostream>
using namespace std;

#include <stdlib.h> // rand


const int N = 1000; // matrix size. Has to be dividable by 4.

const int NIter = 100; // repeat calculations many times in order to neglect memory read time

float a[N][N] __attribute__ ((aligned(16)));
float c[N][N] __attribute__ ((aligned(16)));
float c_simd[N][N] __attribute__ ((aligned(16)));
float c_tbb[N][N] __attribute__ ((aligned(16)));

template<typename T> // required calculations
T f(T x) {
  return sqrt(x);
}

void CheckResults(const float a1[N][N], const float a2[N][N])
{
  bool ok = 1;
  for(int i=0; i<N; i++)
    for(int j=0; j<N; j++)
      if( fabs(a1[i][j] - a2[i][j]) > 1.e-8 ) ok = 0;

  if(ok)
    std::cout << "Parallel and scalar results are the same." << std::endl;
  else
    std::cout << "ERROR! Parallel and scalar results are not the same." << std::endl;
}

class ApplyTBB{ // TODO: finish
public:

  void operator()(const blocked_range<long unsigned int> &range, int cpuId = -1) const {
  }

//   ApplyTBB( float a_[N][N],  float c_[N][N]): a(a_), c(c_){}
  ~ApplyTBB(){}
};

int main() {

    // fill classes by random numbers
  for( int i = 0; i < N; i++ ) {
    for( int j = 0; j < N; j++ ) {
      a[i][j] = float(rand())/float(RAND_MAX); // put a random value, from 0 to 1
    }
  } 
  
    /// -- CALCULATE --
    /// SCALAR
  TStopwatch timerScalar;
  for( int ii = 0; ii < NIter; ii++ )
    for( int i = 0; i < N; i++ ) {
      for( int j = 0; j < N; j++ ) {
        c[i][j] = f(a[i][j]);
      }
    }
  timerScalar.Stop();
  
   /// Vc
  TStopwatch timerVc;
  for( int ii = 0; ii < NIter; ii++ )
    for( int i = 0; i < N; i++ ) {
      for( int j = 0; j < N; j+=float_v::Size ) {
          float_v &aVec = (reinterpret_cast<float_v&>(a[i][j]));
          float_v &cVec = (reinterpret_cast<float_v&>(c_simd[i][j]));
          cVec = f(aVec);
      }
    }
  timerVc.Stop();
  
   /// ITBB and Vc
  TStopwatch timerITBB;
  for( int ii = 0; ii < NIter; ii++ )
  {
     // TODO
  }
  timerITBB.Stop();
  
  double tScal  = timerScalar.RealTime()*1000;
  double tVc    = timerVc.RealTime()*1000;
  double tITBB   = timerITBB.RealTime()*1000;
  
  cout << "Time scalar:  " << tScal << " ms " << endl;
  cout << "Time Vc:      " << tVc << " ms, speed up " << tScal/tVc << endl;
  cout << "Time timerITBB:  " << tITBB << " ms, speed up " << tScal/tITBB << endl;
  
  CheckResults(c,c_simd);
  CheckResults(c,c_tbb);

  return 1;
}
