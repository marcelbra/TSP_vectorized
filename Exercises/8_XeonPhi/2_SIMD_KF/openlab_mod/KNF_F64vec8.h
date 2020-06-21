#ifndef CBM_KF_F64vec8KNF_H
#define CBM_KF_F64vec8KNF_H

#include <stdlib.h>
#include <iostream>
#include <math.h>
#include <lmmintrin.h>
#include <align64.h>
#include "../vec_arithmetic.h"

/**********************************
 *
 *   Vector of 8 double floats
 *
 **********************************/

#pragma pack(push,64)/* Must ensure class & union 16-B aligned */

typedef __m512 VectorFloat __attribute__ ((aligned(64)));

const union
{
  float f;
  int i;
} __f_one = {(float)1.f};

const union
{
    int i[16];
    __m512 m;
}
__f64vec8_abs_mask_cheat = {0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff,
                            0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff,
                            0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff,
                            0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff},
__f64vec8_sgn_mask_cheat = {0x80000000, 0x80000000, 0x80000000, 0x80000000,
                            0x80000000, 0x80000000, 0x80000000, 0x80000000,
                            0x80000000, 0x80000000, 0x80000000, 0x80000000,
                            0x80000000, 0x80000000, 0x80000000, 0x80000000},
__f64vec8_zero_cheat     = {(double)0., (double)0.,
                            (double)0., (double)0.,
                            (double)0., (double)0.,
                            (double)0., (double)0.},
__f64vec8_one_cheat      = {(double)1., (double)1.,
                            (double)1., (double)1.,
                            (double)1., (double)1.,
                            (double)1., (double)1. },
__f64vec8_true_cheat     = {0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
                            0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
                            0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
                            0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF},
__f64vec8_false_cheat    = {0x00000000, 0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000, 0x00000000,
                            0x00000000, 0x00000000, 0x00000000, 0x00000000};

#define _f64vec8_abs_mask ((F64vec8)__f64vec8_abs_mask_cheat.m)
#define _f64vec8_sgn_mask ((F64vec8)__f64vec8_sgn_mask_cheat.m)
#define _f64vec8_zero     ((F64vec8)__f64vec8_zero_cheat.m)
#define _f64vec8_one      ((F64vec8)__f64vec8_one_cheat.m)
#define _f64vec8_true     ((F64vec8)__f64vec8_true_cheat.m)
#define _f64vec8_false    ((F64vec8)__f64vec8_false_cheat.m)

class F64vec8: public ALIGNMENT_ALLOCATOR
{
 public:

  __m512 v;

  double & operator[]( int i ){ return ((double*)&v)[i]; }
  double   operator[]( int i ) const { return ((double*)&v)[i]; }

  F64vec8( ){}
  F64vec8( const __m512 &a ) { v = a; }
  F64vec8( const float  &a ) { v = _mm512_set_1to8_pd(a); }
  F64vec8( const double &a ) { v = _mm512_set_1to8_pd(a); }
  F64vec8( const int &a ) { v = _mm512_set_1to8_pd(a); }

  F64vec8( const double &f0,  const double &f1,  const double &f2,  const double &f3,
            const double &f4,  const double &f5,  const double &f6,  const double &f7 ){ 
    v = _mm512_set_8to8_pd(f7,f6,f5,f4,f3,f2,f1,f0); 
  }

  F64vec8( const __mmask &m ) {
    v = _mm512_mask_movd(_f64vec8_false, m, _f64vec8_true);
  }

  /* Conversion function */
  operator  __m512() const { return v; }    /* Convert to __m512 */


  /* Arithmetic Operators */
  friend F64vec8 operator +(const F64vec8 &a, const F64vec8 &b) { return _mm512_add_pd(a,b); }
  friend F64vec8 operator -(const F64vec8 &a, const F64vec8 &b) { return _mm512_sub_pd(a,b); } 
  friend F64vec8 operator *(const F64vec8 &a, const F64vec8 &b) { return _mm512_mul_pd(a,b); } 
  friend F64vec8 operator /(const F64vec8 &a, const F64vec8 &b) { return _mm512_div_pd(a,b); }

  /* Logical */

  friend F64vec8 operator&( const F64vec8 &a, const F64vec8 &b ){ // mask returned
    return _mm512_and_pq(a,b);
  }
  friend F64vec8 operator|( const F64vec8 &a, const F64vec8 &b ){ // mask returned
    return _mm512_or_pq(a, b);
  }
  friend F64vec8 operator^( const F64vec8 &a, const F64vec8 &b ){ // mask returned
    return _mm512_xor_pq(a, b);
  }
  friend F64vec8 operator!( const F64vec8 &a ){ // mask returned
    return _mm512_xor_pq(a, _f64vec8_true);
  }
  friend F64vec8 operator||( const F64vec8 &a, const F64vec8 &b ){ // mask returned
    return _mm512_or_pq(a, b);
  }

  /* Functions */
  friend F64vec8 min( const F64vec8 &a, const F64vec8 &b ){ return _mm512_min_pd(a, b); }
  friend F64vec8 max( const F64vec8 &a, const F64vec8 &b ){ return _mm512_max_pd(a, b); }

  /* Square Root */
  friend F64vec8 sqrt ( const F64vec8 &a ){ return _mm512_sqrt_pd(a); }

  /* Reciprocal( inverse) Square Root */
  //friend F64vec8 rsqrt( const F64vec8 &a ){ return 1. / sqrt(a); }
  /*  NewtonRaphson Reciprocal Square Root 
      0.5 * rsqrtps * (3 - x * rsqrtps(x) * rsqrtps(x)) */    
  friend F64vec8 rsqrt(const F64vec8 &a) { return 1./sqrt(a); }

  /* Reciprocal (inversion) */
  //friend F64vec8 rcp  ( const F64vec8 &a ){ return 1. / a; }
    /* NewtonRaphson Reciprocal 
     [2 * rcpps(x) - (x * rcpps(x) * rcpps(x))] */
  friend F64vec8 rcp(const F64vec8 &a) { return 1./a; }

  /* Absolute value */
  friend F64vec8 fabs(const F64vec8 &a){ return ( a & _f64vec8_abs_mask ); }

  /* Sign */
  friend F64vec8 sgn(const F64vec8 &a){ return ((a & _f64vec8_sgn_mask) | _f64vec8_one); }
  friend F64vec8 asgnb(const F64vec8 &a, const F64vec8 &b ){ 
    return ((b & _f64vec8_sgn_mask) | a); 
  }

  /* Comparison */

  friend F64vec8 operator<( const F64vec8 &a, const F64vec8 &b ){ // mask returned
    return _mm512_cmplt_pd(a, b);
  }

  /* Non intrinsic functions */

#define _f1(A,F) F64vec8( F(A[ 0]), F(A[ 1]), F(A[ 2]), F(A[ 3]), \
                           F(A[ 4]), F(A[ 5]), F(A[ 6]), F(A[ 7]) )

  friend F64vec8 exp( const F64vec8 &a ){ return _f1( a, exp ); } 
  friend F64vec8 log( const F64vec8 &a ){ return _f1( a, log ); } 
  friend F64vec8 sin( const F64vec8 &a ){ return _f1( a, sin ); } 
  friend F64vec8 cos( const F64vec8 &a ){ return _f1( a, cos ); } 

#undef _f1

  // RRMOD: Define these operations explicitly instead of using vec_arithmetic macro
  // This will prevent temp vectors from being allocated. 
  F64vec8& operator +=(const F64vec8 &a) { return *this = _mm512_add_pd(v,a); }
  F64vec8& operator -=(const F64vec8 &a) { return *this = _mm512_sub_pd(v,a); }
  F64vec8& operator *=(const F64vec8 &a) { return *this = _mm512_mul_pd(v,a); }
  F64vec8& operator /=(const F64vec8 &a) { return *this = _mm512_div_pd(v,a); }
  F64vec8& operator &=(const F64vec8 &a) { return *this = _mm512_and_pq(v,a); }
  F64vec8& operator |=(const F64vec8 &a) { return *this = _mm512_or_pq (v,a); }
  F64vec8& operator ^=(const F64vec8 &a) { return *this = _mm512_xor_pq(v,a); }

  /* Define all operators for consistensy */

  vec_arithmetic(F64vec8,double);

  friend ostream & operator<<(ostream &strm, const F64vec8 &a ){
    strm<<a[ 0]<<" "<<a[ 1]<<" "<<a[ 2]<<" "<<a[ 3]<<" "
        <<a[ 4]<<" "<<a[ 5]<<" "<<a[ 6]<<" "<<a[ 7];
    return strm;
  }

  friend istream & operator>>(istream &strm, F64vec8 &a ){
    double tmp;
    strm>>tmp;
    a = tmp;
    return strm;
  }

} __attribute__ ((aligned(64)));;


#endif 
