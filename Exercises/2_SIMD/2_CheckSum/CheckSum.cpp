  /// Check sum calculation
  ///
  /// @authors: I.Kulakov; M.Zyzak
  /// @e-mail I.Kulakov@gsi.de; M.Zyzak@gsi.de
  /// 
  /// use "g++ CheckSum.cpp -O3 -o a.out -fno-tree-vectorize; ./a.out" to run

 // make calculation parallel: a) using SIMD instructions, b) using usual instructions!

#include "../../../vectors/P4_F32vec4.h" // simulation of the SSE instruction
#include "../../../TStopwatch.h"

#include <iostream>
using namespace std;

#include <stdlib.h> // rand

const int NIter = 100;

const int N = 4000000; // matrix size. Has to be dividable by 4.
unsigned char str[N]; 

template< typename T >
T Sum(const T* data, const int N)
{
    T sum = 0;

    for ( int i = 0; i < N; ++i )
      sum = sum ^ data[i];
    return sum;
}

int main() {

    // fill string by random values
  for( int i = 0; i < N; i++ ) {
    str[i] = 256 * ( double(rand()) / RAND_MAX ); // put a random value, from 0 to 255
  } 
  
    /// -- CALCULATE --
  
    /// SCALAR
  
  unsigned char sumS = 0;
  TStopwatch timerScalar;
  for( int ii = 0; ii < NIter; ii++ )
    sumS = Sum<unsigned char>( str, N );
  timerScalar.Stop();
  
    /// SIMD

  unsigned char sumV = 0;

  TStopwatch timerSIMD;
    // TODO
  timerSIMD.Stop();
  
    /// SCALAR INTEGER
  
  unsigned char sumI = 0;
  
  TStopwatch timerINT;
    // TODO
  timerINT.Stop();


    /// -- OUTPUT --
  
  double tScal = timerScalar.RealTime()*1000;
  double tINT = timerINT.RealTime()*1000;
  double tSIMD = timerSIMD.RealTime()*1000;

  cout << "Time scalar: " << tScal << " ms " << endl;
  cout << "Time INT:   " << tINT << " ms, speed up " << tScal/tINT << endl;
  cout << "Time SIMD:   " << tSIMD << " ms, speed up " << tScal/tSIMD << endl;

  // cout << static_cast<int>(sumS) << " " << static_cast<int>(sumV) << endl;
  if(sumV == sumS && sumI == sumS )
    std::cout << "Results are the same." << std::endl;
  else
    std::cout << "ERROR! Results are not the same." << std::endl;
  
  return 1;
}
