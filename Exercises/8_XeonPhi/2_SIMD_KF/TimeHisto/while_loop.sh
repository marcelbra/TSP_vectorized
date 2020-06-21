# #!

i=1
while [ $i -le ${1} ]
do
  j=1
  while [ $j -le ${2} ]
  do
    echo $i
    echo -e "$i" >> ${3}
    ./ompVc $i 2>> ${4} >> ${3}

    j=`expr $j + 1`
  done
  i=`expr $i + ${5}`
done
