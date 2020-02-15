$ cat signal.sh
#!/bin/bash

if [ $# -lt2]
then
  echo "Usage : $0 Signalnumber PID"
  exit
fi
 case "$1" in

1) echo "Sending SIGHUP Signal"
   kill -SIGHUP $2
   ;;

2) echo "Sending SIGINT Signal"
   kill -SIGINT $2
   ;;

3) echo "Sending SIGQUIT Signal"
   kill -SIGQUIT $2
   ;;

9) echo "Sending SIGKILL Signal"
   kill -SIGKILL $2
   ;;

*) echo "Signal number $1 is not processed"
   ;;

 esac
