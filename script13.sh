$ cat fileop.sh
#! /bin/bash

#check 3 arguments are given#

if [ $# -lt 3 ]
then 
  echo "Usage : $0 option pattern filename"
  exit
fi

#check the given file exists#

if [ ! -f $3 ]
then
  echo "Filename given \"$3\" doesn't exist"
  exit
fi

case "$1" in

# count number of lines matches

-i) echo "Number of lines matches with the pattern $2 :"
    grep -c -i $2 $3
    ;;

# count number of word matches

-c) echo "Number of words matches with the pattern $2 :"
    grep -o -i $2 $3 |wc -l
    ;;
