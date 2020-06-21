# #!

echo "Start"

NTHREADS_HOST=32
NSTAT=1
STEP_HOST=1

PREF0=`pwd`

FILE_HOST=$PREF0/"make_omptime_host.dat"
FILE_HOST_error=$PREF0/"make_omptime_host_error.dat"


echo "Initializing data on the first HOST"

rm -rf $FILE_HOST $FILE_HOST_error


i=1
while [ $i -le $NTHREADS_HOST ]
do
  j=1
  while [ $j -le $NSTAT ]
  do
    echo $i
    echo -e "$i" >> $FILE_HOST

    cd ../
    ./ompVc_local $i 2>> $FILE_HOST_error >> $FILE_HOST
    cd -

    j=`expr $j + 1`
  done
  i=`expr $i + $STEP_HOST`
done



echo "Done"


