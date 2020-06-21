# # #!
# 

NTHREADS=80
NSTAT=1


FILE1="make_tbbtime"$1".dat"
PREF0=`pwd`
PREF1=`pwd`/..
FILE1=$PREF0/$FILE1

# 
# for iProc in {0..3}
# do
#     for ii in {0..7}
#     do
#       threadNumberToCpuMap[$(( 2 * ii + 0 + iProc*20))]=$((4 * ii + iProc)); 
#       threadNumberToCpuMap[$(( 2 * ii + 1 + iProc*20))]=$((4*$ii + 32 + $iProc));
#     done
#     for ii in {0..1}
#     do
#       threadNumberToCpuMap[$((2*ii + 0 + 16 + iProc*20))]=$((4*ii + iProc + 64)); 
#       threadNumberToCpuMap[$((2*ii + 1 + 16 + iProc*20))]=$((4*ii + 8 + iProc + 64));
#     done
# done


echo -e "$NTHREADS $NSTAT\n" > $FILE1

echo -e " single \n"
echo -e " --- single  ---" >> $FILE1
rm -rf $PREF1/single
cd $PREF1; make single
$PREF1/single >> $FILE1

echo -e " singleVc \n"
echo -e " --- singleVc  ---" >> $FILE1
rm -rf $PREF1/singleVc
cd $PREF1;  make singleVc
$PREF1/singleVc >> $FILE1

echo -e " tbb \n"
echo -e " --- tbb  ---" >> $FILE1
rm -rf $PREF1/tbb;
cd $PREF1; make tbb
i=1
while [ $i -le $NTHREADS ]
do
  j=1
  
#   if [ $i -eq 1 ]
#     then CoreList1=${threadNumberToCpuMap[$(i-1)]}
#     else CoreList1=$CoreList1,${threadNumberToCpuMap[(i-1)]}
#   fi

#   echo $CoreList1
  
  while [ $j -le $NSTAT ]
	do
		echo -e " tbb $i - $j\n"
		echo -e "$i: \t" >> $FILE1
# 		taskset -c $CoreList1 $PREF1/tbb $i >> $FILE1
 		$PREF1/tbb $i >> $FILE1
		j=`expr $j + 1`
	done
	i=`expr $i + 1`
done

cd $PREF0


