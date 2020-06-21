/* ==================================================
   Exersice. For loop.
   Authors: I.Kulakov; M.Zyzak
   ================================================== */

  // Run and understand 


  // countdown using a for loop
#include <iostream>
using namespace std;
int main()
{
  for (int n=10; n > 0; n--) {
    cout << n << ", ";

    if ( n == 1 )
      cout << "FIRE!" << endl;
  }
  return 0;
}
