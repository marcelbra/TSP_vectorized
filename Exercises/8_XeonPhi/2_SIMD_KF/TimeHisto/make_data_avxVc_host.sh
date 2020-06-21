# #!

echo "Start"

NVEC=8
NSTAT=1
STEP_HOST=1

PREF0=`pwd`

echo "Initializing data on the HOST"

export LD_LIBRARY_PATH="/micfs/mzyzak/"

FILE_HOST=$PREF0/"avxVc_host.dat"
FILE_HOST_error=$PREF0/"avxVc_host_error.dat"


rm -rf $FILE_HOST $FILE_HOST_error

rm -rf x87_local avxVc_local
make -j x87_local avxVc_local

echo -e "scalar" >> $FILE_HOST

./x87_local 2>> $FILE_HOST_error >> $FILE_HOST

echo -e "AVX" >> $FILE_HOST

i=1
while [ $i -le $NVEC ]
do
  j=1
  while [ $j -le $NSTAT ]
  do
    echo $i
    echo -e "$i" >> $FILE_HOST

    cd $PREF1
    ./avxVc_local $i 2>> $FILE_HOST_error >> $FILE_HOST
    cd -

    j=`expr $j + 1`
  done
  i=`expr $i + $STEP_HOST`
done

cd $PREF0

echo "Done"


