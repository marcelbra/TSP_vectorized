  /// Calculate damage of a target shelled with shots. Each shot affects 5 cells.
  ///
  /// @authors: I.Kulakov; M.Zyzak
  /// @e-mail I.Kulakov@gsi.de; M.Zyzak@gsi.de
  /// 
  /// use "g++ pipeline.cpp -O3 -o pipeline -lVc -ltbb; ./pipeline" to run
  
  /// TODO divide work on four parts.
  
#include <iostream>
#include <fstream>
using namespace std;

#include <vector>

#include "tbb/pipeline.h"
#include "tbb/task_scheduler_init.h"
using namespace tbb;

#define SCALAR

#include "../../../TStopwatch.h"

#include <cmath>
#include <stdlib.h> // rand

const int NChunks = 100;
const int ChunkSize = 1000;

atomic<int> nChunks;

struct DataChunk {
  float a[ChunkSize];
};



int main ()
{
  ofstream file( "output.txt" );
  
#ifdef SCALAR
  
  TStopwatch timer;
  for( int j = 0; j < NChunks; ++j ) {
    DataChunk data;
    
      // generate data
    for( int i = 0; i < ChunkSize; ++i )
      data.a[i] = float(rand())/float(RAND_MAX); // from 0 to 1
      
      // make some processing
    for( int i = 0; i < ChunkSize; ++i ) {
      float &x = data.a[i];
      for( int i = 0; i < 100; ++i )
        x = sin(x);
    }
    
      // another processing
    for( int i = 0; i < ChunkSize; ++i ) {
      float &x = data.a[i];
      for( int i = 0; i < 100; ++i )
        x = tan(x);
    }
    
      // write the result in the file
    for( int i = 0; i < ChunkSize; ++i )
      file << data.a[i] << endl;
  }
  
  timer.Stop();
	
#else
  // TODO create the filters
  
      // Create the pipeline
  tbb::pipeline pipeline;

  InputFilter inputF;
  pipeline.add_filter( inputF );

  Process1Filter proc1F; 
  pipeline.add_filter( proc1F );
  
  Process2Filter proc2F; 
  pipeline.add_filter( proc2F );

  OutputFilter outputF( file );
  pipeline.add_filter( outputF );

  TStopwatch timer;
  
  pipeline.run(4);
  
  timer.Stop();
  
#endif
  
  float time = timer.RealTime()*1000;
  
  printf( " TBB Time:    %f ms. \n", time );

  file.close();
}  





