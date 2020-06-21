# #!

echo "Start"

PREF0=`pwd`

echo "Initializing data on the MIC"
ssh mic0 "
  export LD_LIBRARY_PATH="/micfs/mzyzak/"

  cp $PREF0/piMIC .
  ./piMIC ${1}
  rm -rf a.out
  exit
"

echo "Done"


