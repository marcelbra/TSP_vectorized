#ifndef CBM_KF_F32vec16KNF_H
#define CBM_KF_F32vec16KNF_H

#include <stdlib.h>
#include <iostream>
#include <math.h>
#include <lmmintrin.h>
#include <align64.h>
#include "../vec_arithmetic.h"

/**********************************
 *
 *   Vector of four single floats
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
__f32vec16_abs_mask_cheat = {0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff,
                             0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff,
                             0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff,
                             0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff},
__f32vec16_sgn_mask_cheat = {0x80000000, 0x80000000, 0x80000000, 0x80000000,
                             0x80000000, 0x80000000, 0x80000000, 0x80000000,
                             0x80000000, 0x80000000, 0x80000000, 0x80000000,
                             0x80000000, 0x80000000, 0x80000000, 0x80000000},
__f32vec16_zero_cheat     = {         0,          0,          0,          0,
                                      0,          0,          0,          0,
                                      0,          0,          0,          0,
                                      0,          0,          0,          0},
__f32vec16_one_cheat      = {__f_one.i , __f_one.i , __f_one.i , __f_one.i ,
                             __f_one.i , __f_one.i , __f_one.i , __f_one.i ,
                             __f_one.i , __f_one.i , __f_one.i , __f_one.i ,
                             __f_one.i , __f_one.i , __f_one.i , __f_one.i },
__f32vec16_true_cheat     = {0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
                             0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
                             0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
                             0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF},
__f32vec16_false_cheat    = {0x00000000, 0x00000000, 0x00000000, 0x00000000,
                             0x00000000, 0x00000000, 0x00000000, 0x00000000,
                             0x00000000, 0x00000000, 0x00000000, 0x00000000,
                             0x00000000, 0x00000000, 0x00000000, 0x00000000};

#define _f32vec16_abs_mask ((F32vec16)__f32vec16_abs_mask_cheat.m)
#define _f32vec16_sgn_mask ((F32vec16)__f32vec16_sgn_mask_cheat.m)
#define _f32vec16_zero     ((F32vec16)__f32vec16_zero_cheat.m)
#define _f32vec16_one      ((F32vec16)__f32vec16_one_cheat.m)
#define _f32vec16_true     ((F32vec16)__f32vec16_true_cheat.m)
#define _f32vec16_false    ((F32vec16)__f32vec16_false_cheat.m)

class F32vec16: public ALIGNMENT_ALLOCATOR
{
 public:

  __m512 v;

  float & operator[]( int i ){ return ((float*)&v)[i]; }
  float   operator[]( int i ) const { return ((float*)&v)[i]; }

  F32vec16( ){}
  F32vec16( const __m512 &a ) { v = a; }
  F32vec16( const float  &a ) { v = _mm512_set_1to16_ps(a); }
  F32vec16( const double &a ) { v = _mm512_set_1to16_ps(float(a)); }
  F32vec16( const int &a ) { v = _mm512_set_1to16_ps(float(a)); }

  F32vec16( const float &f0,  const float &f1,  const float &f2,  const float &f3,
            const float &f4,  const float &f5,  const float &f6,  const float &f7,
            const float &f8,  const float &f9,  const float &f10, const float &f11,
            const float &f12, const float &f13, const float &f14, const float &f15 ){ 
    v = _mm512_set_16to16_ps(f15,f14,f13,f12,f11,f10,f9,f8,f7,f6,f5,f4,f3,f2,f1,f0); 
  }

  F32vec16( const __mmask &m ) {
    v = _mm512_mask_movd(_f32vec16_false, m, _f32vec16_true);
  }

  /* Conversion function */
  operator  __m512() const { return v; }    /* Convert to __m512 */


  /* Arithmetic Operators */
  friend F32vec16 operator +(const F32vec16 &a, const F32vec16 &b) { return _mm512_add_ps(a,b); }
  friend F32vec16 operator -(const F32vec16 &a, const F32vec16 &b) { return _mm512_sub_ps(a,b); } 
  friend F32vec16 operator *(const F32vec16 &a, const F32vec16 &b) { return _mm512_mul_ps(a,b); } 
  friend F32vec16 operator /(const F32vec16 &a, const F32vec16 &b) { return _mm512_div_ps(a,b); }

  /* Logical */

  friend F32vec16 operator&( const F32vec16 &a, const F32vec16 &b ){ // mask returned
    return _mm512_castsi512_ps(_mm512_and_pi(_mm512_castps_si512(a), _mm512_castps_si512(b)));
  }
  friend F32vec16 operator|( const F32vec16 &a, const F32vec16 &b ){ // mask returned
    return _mm512_castsi512_ps(_mm512_or_pi(_mm512_castps_si512(a), _mm512_castps_si512(b)));
  }
  friend F32vec16 operator^( const F32vec16 &a, const F32vec16 &b ){ // mask returned
    return _mm512_castsi512_ps(_mm512_xor_pi(_mm512_castps_si512(a), _mm512_castps_si512(b)));
  }
  friend F32vec16 operator!( const F32vec16 &a ){ // mask returned
    return _mm512_castsi512_ps(_mm512_xor_pi(_mm512_castps_si512(a), _mm512_castps_si512(_f32vec16_true)));
  }
  friend F32vec16 operator||( const F32vec16 &a, const F32vec16 &b ){ // mask returned
    return _mm512_castsi512_ps(_mm512_or_pi(_mm512_castps_si512(a), _mm512_castps_si512(b)));
  }

  /* Functions */
  friend F32vec16 min( const F32vec16 &a, const F32vec16 &b ){ return _mm512_min_ps(a, b); }
  friend F32vec16 max( const F32vec16 &a, const F32vec16 &b ){ return _mm512_max_ps(a, b); }

  /* Square Root */
  friend F32vec16 sqrt ( const F32vec16 &a ){ return _mm512_sqrt_ps (a); }

  /* Reciprocal( inverse) Square Root */
  //friend F32vec16 rsqrt( const F32vec16 &a ){ return 1. / sqrt(a); }
  /*  NewtonRaphson Reciprocal Square Root 
      0.5 * rsqrtps * (3 - x * rsqrtps(x) * rsqrtps(x)) */    
  friend F32vec16 rsqrt(const F32vec16 &a) {
    F32vec16 Ra0 = _mm512_rsqrtlut_ps(a);
    static const F32vec16 fvecf0pt5(0.5f);
    static const F32vec16 fvecf3pt0(3.0f);
    return (fvecf0pt5 * Ra0) * (fvecf3pt0 - (a * Ra0) * Ra0);
  }

  /* Reciprocal (inversion) */
  //friend F32vec16 rcp  ( const F32vec16 &a ){ return 1. / a; }
    /* NewtonRaphson Reciprocal 
     [2 * rcpps(x) - (x * rcpps(x) * rcpps(x))] */
  friend F32vec16 rcp(const F32vec16 &a) {
    F32vec16 Ra0 = _mm512_recip_ps(a);
    return _mm512_sub_ps(_mm512_add_ps(Ra0, Ra0), _mm512_mul_ps(_mm512_mul_ps(Ra0, a), Ra0));
    return Ra0;
  }

  /* Absolute value */
  friend F32vec16 fabs(const F32vec16 &a){ return ( a & _f32vec16_abs_mask ); }

  /* Sign */
  friend F32vec16 sgn(const F32vec16 &a){ return ((a & _f32vec16_sgn_mask) | _f32vec16_one); }
  friend F32vec16 asgnb(const F32vec16 &a, const F32vec16 &b ){ 
    return ((b & _f32vec16_sgn_mask) | a); 
  }

  /* Comparison */

  friend F32vec16 operator<( const F32vec16 &a, const F32vec16 &b ){ // mask returned
    return _mm512_cmplt_ps(a, b);
  }

  /* Non intrinsic functions */

#define _f1(A,F) F32vec16( F(A[ 0]), F(A[ 1]), F(A[ 2]), F(A[ 3]), \
                           F(A[ 4]), F(A[ 5]), F(A[ 6]), F(A[ 7]), \
                           F(A[ 8]), F(A[ 9]), F(A[10]), F(A[11]), \
                           F(A[12]), F(A[13]), F(A[14]), F(A[15]) )

  friend F32vec16 exp( const F32vec16 &a ){ return _f1( a, exp ); } 
  friend F32vec16 log( const F32vec16 &a ){ return _f1( a, log ); } 
  friend F32vec16 sin( const F32vec16 &a ){ return _f1( a, sin ); } 
  friend F32vec16 cos( const F32vec16 &a ){ return _f1( a, cos ); } 

#undef _f1

  // RRMOD: Define these operations explicitly instead of using vec_arithmetic macro
  // This will prevent temp vectors from being allocated. 
  F32vec16& operator +=(const F32vec16 &a) { return *this = _mm512_add_ps(v,a); }
  F32vec16& operator -=(const F32vec16 &a) { return *this = _mm512_sub_ps(v,a); }
  F32vec16& operator *=(const F32vec16 &a) { return *this = _mm512_mul_ps(v,a); }
  F32vec16& operator /=(const F32vec16 &a) { return *this = _mm512_div_ps(v,a); }
  F32vec16& operator &=(const F32vec16 &a) { return *this = _mm512_castsi512_ps(_mm512_and_pi(_mm512_castps_si512(v), _mm512_castps_si512(a))); }
  F32vec16& operator |=(const F32vec16 &a) { return *this = _mm512_castsi512_ps(_mm512_or_pi (_mm512_castps_si512(v), _mm512_castps_si512(a))); }
  F32vec16& operator ^=(const F32vec16 &a) { return *this = _mm512_castsi512_ps(_mm512_xor_pi(_mm512_castps_si512(v), _mm512_castps_si512(a))); }

  /* Define all operators for consistensy */

  vec_arithmetic(F32vec16,float);

  friend ostream & operator<<(ostream &strm, const F32vec16 &a ){
    strm<<a[ 0]<<" "<<a[ 1]<<" "<<a[ 2]<<" "<<a[ 3]<<" "
        <<a[ 4]<<" "<<a[ 5]<<" "<<a[ 6]<<" "<<a[ 7]<<" "
        <<a[ 8]<<" "<<a[ 9]<<" "<<a[10]<<" "<<a[11]<<" "
        <<a[12]<<" "<<a[13]<<" "<<a[14]<<" "<<a[15];
    return strm;
  }

  friend istream & operator>>(istream &strm, F32vec16 &a ){
    float tmp;
    strm>>tmp;
    a = tmp;
    return strm;
  }

} __attribute__ ((aligned(64)));;


#endif 
