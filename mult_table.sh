#! /usr/bin/bash
read -p "Enter the number of columns : " i
read -p "Enter the number of rows : " j

if [ -z "$i" ] || [ -z "$j" ] || [ "$i" -le 0 ] || [ "$j" -le 0 ]
then
	echo "Invalid Input"
	exit 1
fi
output=" "
for ((m=1; m<=$i; m++))
do
	for ((n=1; n<=$j; n++))
	do
	mult=$((m*n))
	output+=" ${m}*${n}=$mult"
	done
output+="\n"
done
echo -e $output
exit 1
