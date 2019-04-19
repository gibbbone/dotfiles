#! /bin/bash
cd /c/Users/Giovanni/Desktop/everyday
YESTERDAY=$(date -d "- 1 day" +%Y-%m-%d)
while getopts ":p" opt; do
	case $opt in
		p)
      		YESTERDAY=$(ls | tail -n 1)
      		;;
    	\?)
      		echo "Invalid option: -$OPTARG" >&2
            ;;
	esac
done
if [ ! -f $YESTERDAY/things.md ]; then
	echo "File $YESTERDAY/things.md not found."
else
	TODAY=$(date +%Y-%m-%d) 
	mkdir -p $TODAY 
	echo "$TODAY" >> $TODAY/things.md
	tail -n +2 $YESTERDAY/things.md >> $TODAY/things.md
fi