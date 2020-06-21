/* ==================================================
   Exersice. Hello World. OpenMP
   Authors: I.Kulakov; M.Zyzak
   ================================================== */

// to compile and run the program type: g++ HelloWorld.cpp -O3 -fopenmp; ./a.out

// 1. Parallelize the program with OpenMP, create 10 threads
// 2. Synchronize threads using omp critical. Compare the results with and without sinchronization
// 3. Get the id of a current thread and print it out


#include <omp.h>
#include <iostream>
using namespace std;


int main() {

  #pragma omp parallel num_threads(10)
  {
    int id = 0;
    
    #pragma omp critical
    cout << " Hello world " << id <<  endl;
  }

  return 0;
}
