#!/bin/sh

echo "Flip Coin Simulation"
flipCoin=$(($RANDOM%2))

if [ $flipCoin -eq 0 ]
then
	echo "Head"
else
	echo "Tail"
fi
