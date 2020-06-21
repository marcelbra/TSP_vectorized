# #!

CHECKFILE="/micfs/ikulakov/Exersices/check0.txt"
ONE=1

CHECK=($(cat $CHECKFILE))

if [ $CHECK  -eq $ONE ]
then
echo -e "The system is occuped by another group. You should wait till theier calculations will be ready."
else
echo -e "1" > $CHECKFILE

echo "Start"

NVEC=16
NSTAT=1
STEP_MIC0=1
iThread=1

PREF0=`pwd`
PREF1=$PREF0"/.."

PREF_MIC="/home/ikulakov/SIMD_KF"
FILE_MIC0=$PREF_MIC/"make_singleVc_mic.dat"
FILE_MIC0_local=$PREF0/"make_singleVc_mic.dat"

FILE_MIC0_error=$PREF_MIC/"make_singleVc_mic0_error.dat"
FILE_MIC0_local_error=$PREF0/"make_singleVc_mic0_error.dat"

cd $PREF1
rm -rf x87 singleVc
make -j x87 singleVc

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
  cp $PREF0/while_loop_singleVc.sh .
  cp $PREF1/x87 .
  cp $PREF1/singleVc .

  echo -e "scalar" >> $FILE_MIC0

  ./x87 2>> $FILE_MIC0_error >> $FILE_MIC0

  echo -e "AVX" >> $FILE_MIC0

  . while_loop_singleVc.sh $NVEC $NSTAT $FILE_MIC0 $FILE_MIC0_error $STEP_MIC0

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
