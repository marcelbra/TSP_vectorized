  /// Calculate damage of a target shelled with shots. Each shot affects 5 cells.
  ///
  /// @authors: I.Kulakov; M.Zyzak
  /// @e-mail I.Kulakov@gsi.de; M.Zyzak@gsi.de
  /// 
  /// use "g++ pipeline.cpp -O3 -o pipeline -lVc -ltbb; ./pipeline" to run
  
#include <iostream>
#include <fstream>
using namespace std;

#include <vector>

#include "tbb/pipeline.h"
#include "tbb/task_scheduler_init.h"
using namespace tbb;

#define MUTE // print only final result
// #define SCALAR

#include "../../../../TStopwatch.h"

#include <cmath>
#include <stdlib.h> // rand

const int NChunks = 100;
const int ChunkSize = 1000;

atomic<int> nChunks;

struct DataChunk {
  float a[ChunkSize];
};

  /// ---------------------------------

class InputFilter: public tbb::filter {
public:
    InputFilter(): filter(serial_in_order){}
    ~InputFilter(){}
private:
    void* operator()(void*);
};
 
void* InputFilter::operator()(void*) {

  if (++nChunks > NChunks) return 0;
  
  DataChunk* data = new DataChunk;
  
    // generate
  for( int i = 0; i < ChunkSize; ++i )
    data->a[i] = float(rand())/float(RAND_MAX); // from 0 to 1
    
#ifndef MUTE
  cout << " ChunkCreated " << endl;
#endif
  return data;
}

  /// ---------------------------------

class Process1Filter: public tbb::filter {
public:
    Process1Filter(): filter(serial_in_order){}
    ~Process1Filter(){}
private:
    void* operator()(void*);
    
    void Core(float& x){
      for( int i = 0; i < 100; ++i )
        x = sin(x);
    }
};
 
void* Process1Filter::operator()(void* d) {
  DataChunk* data = static_cast<DataChunk*>(d);

  for( int i = 0; i < ChunkSize; ++i )
    Core(data->a[i]);
  
  return data;
}

  /// ---------------------------------

class Process2Filter: public tbb::filter {
public:
    Process2Filter(): filter(serial_in_order){}
    ~Process2Filter(){}
private:
    void* operator()(void*);
    
    void Core(float& x){
      for( int i = 0; i < 100; ++i )
        x = tan(x);
    }
};
 
void* Process2Filter::operator()(void* d) {
  DataChunk* data = static_cast<DataChunk*>(d);

  for( int i = 0; i < ChunkSize; ++i )
    Core(data->a[i]);
  
  return data;
}

  /// ---------------------------------

class OutputFilter: public tbb::filter {
public:
    OutputFilter(ofstream& file_): filter(serial_in_order), fFile(file_){}
    ~OutputFilter(){}
private:
  ofstream& fFile;
  void* operator()(void*);
};
 
void* OutputFilter::operator()(void* d) {
  DataChunk* data = static_cast<DataChunk*>(d);
  
  for( int i = 0; i < ChunkSize; ++i )
    fFile << data->a[i] << endl;
    
#ifndef MUTE
   cout << " ChunkStored " << endl;
#endif
  return 0;
}

class TScalarPipeline {
public:
  void add_filter(tbb::filter& f) { fFilters.push_back(&f); }
  
  void run(int) { 
    for(;;) {
      void *p = 0;
      p = fFilters[0]->operator()(p);
      if ( p == 0 ) return;
      for( unsigned i = 1; i < fFilters.size(); ++i )
	p = fFilters[i]->operator()(p);
    }
  }
  
private:
  vector<tbb::filter*> fFilters;
};

int main ()
{
  ofstream file( "output.txt" );
    
    // Create the pipeline
#ifdef SCALAR
  TScalarPipeline pipeline;
#else
  tbb::pipeline pipeline;
#endif

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
  
  file.close();
  
  float timePar = timer.RealTime()*1000;
  
  printf( " TBB Time:    %f ms. \n", timePar );
}  





