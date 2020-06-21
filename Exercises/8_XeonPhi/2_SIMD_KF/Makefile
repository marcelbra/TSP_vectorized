####### Compiler, tools and options

# CXX           = g++  #must be already installed
CXX = icc

# ifeq ($(CXX),g++)
ifneq (,$(findstring g++,$(CXX)))
OMPFLAG		= -fopenmp
endif


# ifeq ($(CXX),icc)
ifneq (,$(findstring icc,$(CXX)))
OMPFLAG		= -openmp
endif

CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -inline-forceinline -std=c++11 -O3 -Wno-long-long -Iopenlab_mod  -lrt
#CXXFLAGSSIMPL = -msse -msse2 -O2 -Iopenlab_mod -march=native
CXXFLAGSSIMPL = -inline-forceinline -std=c++11 -O3 -Iopenlab_mod 
LINK          = $(CXX)
LFLAGS        = -Wl,--as-needed
LIBS          = 
TBB_INCLUDE   = -I/opt/intel/composerxe_mic/tbb/include/
TBB_LIBS      = -L/mic0/zyzak/SIMD_KF/TBBLib/mic/ -ltbb
#-L/opt/intel/composerxe_mic/tbb/lib/mic -ltbb
AR            = ar cqs
RANLIB        = 
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -rk
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -sf
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = Fit.cxx Fit.h FitClasses.h
TBB_SOURCES		= openlab_mod/multithread.h openlab_mod/parallel_for_simple.h openlab_mod/parallel_for_simpleHT.h

BINARIES      = single singleVc tbb tbbVc omp ompVc pseudo x87 double single_local omp_local singleVc_local avxVc_local tbb_double tbb_double_local tbb_local tbbVc_local ompVc_local double_local x87_local
OUTPUT				= data/fit.dat data/fitdiff.dat data/time.dat QualityHisto/*.root
DESTDIR       = 


default: singleVc
	@echo "use $(CXX)"

####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

# old options
single: $(SOURCES)
	$(CXX) -DKNF -mmic $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx

singleVc: $(SOURCES)
	  $(CXX) -DKNF -DVC -mmic $(CXXFLAGS) $(LIBS) -o "$@" Fit.cxx -L/home/mzyzak/Vc/vc/build/lib -lVc_MIC

single_local: $(SOURCES)
	$(CXX) -DSIMPLSIMD -xSSE4.2 -DX5680 $(CXXFLAGSSIMPL)  $(LIBS) -o "$@" Fit.cxx

singleVc_local: $(SOURCES)
	$(CXX) -DX5680 -xSSE4.2 $(CXXFLAGS) $(LIBS) -o "$@" Fit.cxx -lVc

avxVc_local: $(SOURCES)
	$(CXX) -DX5680 -xAVX $(CXXFLAGS) $(LIBS) -o "$@" Fit.cxx -lVc
	
omp: $(SOURCES)
	$(CXX) $(OMPFLAG) -DOMP -DKNF -mmic $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx

ompVc: $(SOURCES)
	$(CXX) $(OMPFLAG) -DOMP -DKNF -DVC -mmic $(CXXFLAGS) $(LIBS) -o "$@" Fit.cxx -L/home/mzyzak/Vc/vc/build/lib -lVc_MIC

omp_local: $(SOURCES)
	$(CXX) $(OMPFLAG) -DOMP -DX5680 -DSIMPLSIMD -xSSE4.2 $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx

ompVc_local: $(SOURCES)
	$(CXX) $(OMPFLAG) -DOMP -DX5680 -xAVX $(CXXFLAGS) $(LIBS) -o "$@" Fit.cxx -lVc

#omp: openlab_mod/P4_F32vec4.h $(SOURCES)
#	$(CXX) $(OMPFLAG) -DSIMPLSIMD $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx

tbb: $(TBB_SOURCES) $(SOURCES)
	$(CXX) -DKNF -DTBB -mmic $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx -L/opt/intel/composerxe_mic/compiler/lib/mic $(TBB_LIBS)

tbb_local: $(TBB_SOURCES) $(SOURCES)
	$(CXX) -DSIMPLSIMD -DX5680 -DTBB $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx -L/opt/intel/composerxe_mic/tbb/lib -ltbb

#tbb: $(TBB_SOURCES) $(SOURCES)
#	$(CXX) -DTBB -DSIMPLSIMD $(CXXFLAGSSIMPL) $(LIBS) $(TBB_LIBS) -o "$@" Fit.cxx

pseudo: openlab_mod/PSEUDO_F32vec4.h $(SOURCES)
	$(CXX) -DNOTSIMD $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx

tbbVc: $(TBB_SOURCES) $(SOURCES)
	$(CXX) -DTBB $(CXXFLAGS) $(Vc_INCLUDE) $(LIBS) $(TBB_INCLUDE) -o "$@" Fit.cxx $(Vc_LIBS) $(TBB_LIBS)


x87: $(SOURCES)
	$(CXX) -DX87 -mmic $(CXXFLAGS) -fno-tree-vectorize $(LIBS) -o "$@" Fit.cxx

x87_local: $(SOURCES)
	$(CXX) -DX87 $(CXXFLAGS) -fno-tree-vectorize $(LIBS) -o "$@" Fit.cxx

double: $(SOURCES)
	$(CXX) -DDOUBLE_PRECISION_KNF -mmic $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx -L/opt/intel/composerxe_mic/compiler/lib/mic

double_local: openlab_mod/P4_F64vec2.h $(SOURCES)
	$(CXX) -DDOUBLE_PRECISION $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx

tbb_double: $(TBB_SOURCES) $(SOURCES)
	$(CXX) -DDOUBLE_PRECISION_KNF -DTBB -mmic $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx -L/opt/intel/composerxe_mic/compiler/lib/mic $(TBB_LIBS)

tbb_double_local: $(TBB_SOURCES) $(SOURCES)
	$(CXX) -DDOUBLE_PRECISION -DX5680 -DTBB $(CXXFLAGSSIMPL) $(LIBS) -o "$@" Fit.cxx -L/opt/intel/composerxe_mic/tbb/lib -ltbb

valarray: openlab_mod/ValVec.h $(SOURCES)
	$(CXX) -DVALARRAY $(CXXFLAGS) $(LIBS) -o "$@" Fit.cxx

double_debug: openlab_mod/P4_F64vec2.h Fit.cxx FitClasses.h Fit.h
	$(CXX) -DDOUBLE_PRECISION -g -o "$@" Fit.cxx

debug: openlab_mod/P4_F64vec2.h Fit.cxx FitClasses.h Fit.h
	$(CXX) -g -o "$@" Fit.cxx

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

all: $(BINARIES)

.tar.bz2: clean
	tar cj --exclude=hltsse_openlab"$@" --exclude=.*.swp -C .. hltsse > hltsse_openlab"$@"

clean:
	-$(DEL_FILE) $(BINARIES) $(OUTPUT)

info:
	@echo "use $(CXX)"
####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile



compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 



install:  install_target install_sources  FORCE

uninstall: uninstall_target uninstall_sources   FORCE

FORCE:

