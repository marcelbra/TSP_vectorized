# #!

CHECKFILE0="/micfs/ikulakov/Exersices/check0.txt"
CHECKFILE1="/micfs/ikulakov/Exersices/check1.txt"
ONE=1

CHECK=($(cat $CHECKFILE0))

if [ $CHECK  -eq $ONE ]
then
echo -e "The system is occuped by another group. You should wait till theier calculations will be ready."
else
CHECK=($(cat $CHECKFILE0))
fi

if [ $CHECK  -eq $ONE ]
then
echo -e "The system is occuped by another group. You should wait till theier calculations will be ready."
else
echo -e "1" > $CHECKFILE0
echo -e "1" > $CHECKFILE1

echo "Start"

NTHREADS_HOST=32
NTHREADS_MIC0=240
NTHREADS_MIC1=240
NSTAT=1
STEP_HOST=4
STEP_MIC0=24
STEP_MIC1=24

START=0

FILE_HOST="make_omptime_host.dat"
PREF0=`pwd`
PREF1=$PREF0/..
FILE_HOST=$PREF0/$FILE_HOST


PREF_MIC="/home/ikulakov/SIMD_KF"
FILE_MIC0=$PREF_MIC/"make_omptime_mic0.dat"
FILE_MIC1=$PREF_MIC/"make_omptime_mic1.dat"
FILE_MIC0_local=$PREF0/"make_omptime_mic0.dat"
FILE_MIC1_local=$PREF0/"make_omptime_mic1.dat"

FILE_MIC0_error=$PREF_MIC/"make_omptime_mic0_error.dat"
FILE_MIC1_error=$PREF_MIC/"make_omptime_mic1_error.dat"
FILE_MIC0_local_error=$PREF0/"make_omptime_mic0_error.dat"
FILE_MIC1_local_error=$PREF0/"make_omptime_mic1_error.dat"

SLEEP_TIME=10

echo "Initializing data on the first MIC"
ssh mic0 "
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
  exit
"

echo "Initializing data on the second MIC"
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
  exit
"

# echo "Initialize Intel variables on the host"
# . /opt/intel/composerxe_mic/bin/compilervars.sh intel64
rm -rf $FILE_HOST

cd $PREF1
rm -rf ompVc
rm -rf ompVc_local
make -j ompVc ompVc_local

i=`expr $START + $STEP_HOST`
while [ $i -le $NTHREADS_HOST ]
do
  j=1
  while [ $j -le $NSTAT ]
  do
    echo -e " ompVc $i - $j"
    echo -e "$i" >> $FILE_HOST
    cd $PREF1; ./ompVc_local $i >> $FILE_HOST
    j=`expr $j + 1`
  done
  i=`expr $i + $STEP_HOST`
done
i=`expr $i - $STEP_HOST`

i=`expr $i + $STEP_MIC0`
NTHREADS_HOST_MIC0=`expr $NTHREADS_HOST + $NTHREADS_MIC0`
while [ $i -le $NTHREADS_HOST_MIC0 ]
do
  j=1
  while [ $j -le $NSTAT ]
  do
    i_MIC0=`expr $i - $NTHREADS_HOST`
    ssh mic0 "
      cd SIMD_KF/
  export LD_LIBRARY_PATH=$PREF_MIC
      echo -e "$i" >> $FILE_MIC0
      ./ompVc $i_MIC0 2>> $FILE_MIC0_error >> $FILE_MIC0 &
      exit
    "
    echo -e " ompVc $i - $j"
     echo -e "$i" >> $FILE_HOST
    cd $PREF1; ./ompVc_local $NTHREADS_HOST >> $FILE_HOST &
    sleep $SLEEP_TIME
    j=`expr $j + 1`
  done
  i=`expr $i + $STEP_MIC0`
done
i=`expr $i - $STEP_MIC0`

i=`expr $i + $STEP_MIC1`
NTHREADS_HOST_MIC0_MIC1=`expr $NTHREADS_HOST + $NTHREADS_MIC0 + $NTHREADS_MIC1`
while [ $i -le $NTHREADS_HOST_MIC0_MIC1 ]
do
  j=1
  while [ $j -le $NSTAT ]
  do
    i_MIC1=`expr $i - $NTHREADS_HOST_MIC0`
    ssh mic1 "
      cd SIMD_KF/
  export LD_LIBRARY_PATH=$PREF_MIC
      echo -e "$i" >> $FILE_MIC1
      ./ompVc $i_MIC1 >> $FILE_MIC1 2>> $FILE_MIC1_error &
      exit
    "
    i_MIC0=$NTHREADS_MIC0
    ssh mic0 "
      cd SIMD_KF/
  export LD_LIBRARY_PATH=$PREF_MIC
      echo -e "$i" >> $FILE_MIC0
      ./ompVc $i_MIC0 >> $FILE_MIC0 2>> $FILE_MIC0_error &
      exit
    "
    echo -e " ompVc $i - $j"
    echo -e "$i" >> $FILE_HOST
    cd $PREF1; ./ompVc_local $NTHREADS_HOST >> $FILE_HOST &
    sleep $SLEEP_TIME
    j=`expr $j + 1`
  done
  i=`expr $i + $STEP_MIC1`
done
i=`expr $i - $STEP_MIC1`

# j=1
# while [ $j -le $NSTAT ]
# do
#   i_MIC1=$NTHREADS_MIC1
#   ssh mic1 "
#     cd SIMD_KF/
#     export LD_LIBRARY_PATH=/SIMD_KF/TBBLib/mic/
#     echo -e "$i" >> $FILE_MIC1
#     ./ompVc $i_MIC1 >> $FILE_MIC1 2>> $FILE_MIC1_error &
#     exit
#   "
#   i_MIC0=`expr $NTHREADS_MIC0 + 1`
#   ssh mic0 "
#     cd SIMD_KF/
#     export LD_LIBRARY_PATH=/SIMD_KF/TBBLib/mic/
#     echo -e "$i" >> $FILE_MIC0
#     ./ompVc $i_MIC0 >> $FILE_MIC0 2>> $FILE_MIC0_error &
#     exit
#   "
#   echo -e " ompVc $i - $j"
#   echo -e "$i" >> $FILE_HOST
#   cd $PREF1; ./ompVc_local $NTHREADS_HOST >> $FILE_HOST &
#   sleep $SLEEP_TIME
#   j=`expr $j + 1`
# done
# j=1
# while [ $j -le $NSTAT ]
# do
#   i_MIC1=`expr $NTHREADS_MIC1 + 1`
#   ssh mic1 "
#     cd SIMD_KF/
#     export LD_LIBRARY_PATH=/SIMD_KF/TBBLib/mic/
#     echo -e "$i" >> $FILE_MIC1
#     ./ompVc $i_MIC1 >> $FILE_MIC1 2>> $FILE_MIC1_error &
#     exit
#   "
#   i_MIC0=`expr $NTHREADS_MIC0 + 1`
#   ssh mic0 "
#     cd SIMD_KF/
#     export LD_LIBRARY_PATH=/SIMD_KF/TBBLib/mic/
#     echo -e "$i" >> $FILE_MIC0
#     ./ompVc $i_MIC0 >> $FILE_MIC0 2>> $FILE_MIC0_error &
#     exit
#   "
#   echo -e " ompVc $i - $j"
#   echo -e "$i" >> $FILE_HOST
#   cd $PREF1; ./ompVc_local $NTHREADS_HOST >> $FILE_HOST &
#   sleep $SLEEP_TIME
#   j=`expr $j + 1`
# done

echo "Cleaning data on the first MIC"
ssh mic0 "
  cp $FILE_MIC0 $PREF0
  chmod 644 $FILE_MIC0_local
  cp $FILE_MIC0_error $PREF0
  chmod 644 $FILE_MIC0_local_error
  cd /home/ikulakov/
  rm -rf SIMD_KF
  exit
"

echo "Cleaning data on the first MIC"
ssh mic1 "
  cp $FILE_MIC1 $PREF0
  chmod 644 $FILE_MIC1_local
  cp $FILE_MIC1_error $PREF0
  chmod 644 $FILE_MIC1_local_error
  cd /home/ikulakov/
  rm -rf SIMD_KF
  exit
"

cd $PREF0

echo -e "0" > $CHECKFILE0
echo -e "0" > $CHECKFILE1

fi
