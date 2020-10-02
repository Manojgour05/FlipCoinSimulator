#!/bin/sh

echo "Flip Coin Simulation"
flipCoin=$(($RANDOM%2))


if [ $flipCoin -eq 0 ]
then
	echo "Head winner"
else
	echo "Tail winner"
fi

#As a simulator, loop through Multiple times of flipping a coin

hcount=0
tcount=0
for((i=0;i<=10;i++))
do
	num=$(($RANDOM%2))
if [ $num -eq 0 ]
	then
		echo "Head"
     		((hcount++))
else
		echo "Tail"
		((tcount++))
fi
done
		echo "Head won : $hcount"
		echo "Tail won : $tcount"
