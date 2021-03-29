#! /bin/bash
while getopts ":n:i:b:" opt; do
	case $opt in
		n)
			if [ $OPTARG == "*" ];then
				git add *
			else
				git add $OPTARG
			fi
			;;
		i)
			git commit -m "$OPTARG"
			;;
		b)
			git pull
			git push -u origin $OPTARG
			;;
		\?)
			echo "Invalid option: -$OPTARG"
			;;
	esac
done
