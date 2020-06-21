# # #!
# 

CHECKFILE="/home/kulakov/check.txt"
ONE=1

CHECK=($(cat $CHECKFILE))

if [ $CHECK  -eq $ONE ]
then
echo -e "The system is occuped by another group. You should wait till theier calculations will be ready."
else
echo -e "1" > $CHECKFILE


NTHREADS=80
NSTAT=128


# FILE1=make_omptime.dat
FILE1="make_opencl_GPU_time"$1".dat"
rm -rf $FILE1
PREF0=`pwd`
PREF1=`pwd`/..
FILE1=$PREF0/$FILE1

echo -e $NSTAT $NSTAT >> $FILE1

echo -e " opencl \n"
echo -e " --- opencl  ---" >> $FILE1
rm -rf $PREF1/opencl;
cd $PREF1; make opencl
i=1
for i in {1..128}
do
  echo -e " opencl $i - $j\n"
  echo -e "$i: \t" >> $FILE1
  $PREF1/opencl $i >> $FILE1
done

cd $PREF0

echo -e "0" > $CHECKFILE

fi
