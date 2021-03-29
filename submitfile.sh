#! /bin/bash
while getopts ":B:n:i:b:" opt; do
	case $opt in
		B)
			git checkout $OPTARG
			;;
		n)
			git add $OPTARG
			;;
		i)
			git commit -m "$OPTARG"
			;;
		b)
			git push -u origin $OPTARG
			;;
		\?)
			echo "Invalid option: -$OPTARG"
			;;
	esac
done
