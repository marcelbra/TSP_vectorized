#ifndef CBM_KF_align64_H
#define CBM_KF_align64_H

# ifdef _WIN32
#  define ALIGNMENT_PREFIX __declspec(align(64))
#  define ALIGNMENT_SUFFIX 
# else
#  define ALIGNMENT_PREFIX 
#  define ALIGNMENT_SUFFIX __attribute__ ((aligned(64)))
# endif

# include <new>
class ALIGNMENT_ALLOCATOR {
public:
  void* operator new( size_t n ) { return _mm_malloc( n, 64 ); }
  void* operator new[]( size_t n ) { return _mm_malloc( n, 64 ); }
  void operator delete( void* ptr ) { _mm_free( ptr ); }
  void operator delete[]( void* ptr ) { _mm_free( ptr ); }
};

#endif /* CBM_KF_align16_H */
