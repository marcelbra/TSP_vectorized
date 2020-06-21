# #!

echo "Start"

NVEC=4
NSTAT=1
STEP_HOST=1

PREF0=`pwd`
PREF1=$PREF0"/.."

FILE_HOST=$PREF0/"make_singleVc_host.dat"
FILE_HOST_error=$PREF0/"make_singleVc_host_error.dat"


echo "Initializing data on the HOST"

rm -rf $FILE_HOST $FILE_HOST_error
cd ../
rm -rf x87_local singleVc_local
make -j x87_local singleVc_local

echo -e "scalar" >> $FILE_HOST

./x87_local 2>> $FILE_HOST_error >> $FILE_HOST

echo -e "SSE" >> $FILE_HOST

i=1
while [ $i -le $NVEC ]
do
  j=1
  while [ $j -le $NSTAT ]
  do
    echo $i
    echo -e "$i" >> $FILE_HOST

    cd $PREF1
    ./singleVc_local $i 2>> $FILE_HOST_error >> $FILE_HOST
    cd -

    j=`expr $j + 1`
  done
  i=`expr $i + $STEP_HOST`
done

cd $PREF0

echo "Done"


