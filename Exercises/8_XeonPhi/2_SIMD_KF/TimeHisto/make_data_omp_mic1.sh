# #!

CHECKFILE="/micfs/ikulakov/Exersices/check1.txt"
ONE=1

CHECK=($(cat $CHECKFILE))

if [ $CHECK  -eq $ONE ]
then
echo -e "The system is occuped by another group. You should wait till theier calculations will be ready."
else
echo -e "1" > $CHECKFILE

echo "Start"

NTHREADS_MIC0=8
NSTAT=1
STEP_MIC0=1
iThread=1

PREF0=`pwd`
PREF1=`pwd`"/.."

PREF_MIC="/home/ikulakov/SIMD_KF"
FILE_MIC0=$PREF_MIC/"make_omptime_mic1_local.dat"
FILE_MIC0_local=$PREF0/"make_omptime_mic1_local.dat"

FILE_MIC0_error=$PREF_MIC/"make_omptime_mic1_local_error.dat"
FILE_MIC0_local_error=$PREF0/"make_omptime_mic1_local_error.dat"

cd $PREF1
rm -rf ompVc
rm -rf ompVc_local
make ompVc
make ompVc_local

echo "Initializing data on the first MIC"
ssh mic1 "
  rm -rf SIMD_KF
  mkdir SIMD_KF
  cd SIMD_KF/
  mkdir data
  cd data
  cp $PREF0/../data/geo.dat .
  cp $PREF0/../data/tracks.dat .
  cd ../
  cp $PREF0/while_loop.sh .
  cp $PREF0/../ompVc .
  cp /micfs/mzyzak/libiomp5.so . -rf
  export LD_LIBRARY_PATH=$PREF_MIC

  . while_loop.sh $NTHREADS_MIC0 $NSTAT $FILE_MIC0 $FILE_MIC0_error $STEP_MIC0

  cp $FILE_MIC0 $PREF0
  chmod 644 $FILE_MIC0_local
  cp $FILE_MIC0_error $PREF0
  chmod 644 $FILE_MIC0_local_error
  cd /home/ikulakov/
  rm -rf SIMD_KF

  exit
"

cd $PREF0

echo "Done"

echo -e "0" > $CHECKFILE

fi
