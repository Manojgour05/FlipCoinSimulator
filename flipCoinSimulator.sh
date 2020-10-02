#!/bin/sh

flipCoin=$((1+$RANDOM%2))

if [ $flipCoin -eq 1 ]
then
        echo "Head"
else
        echo "Tail"
fi
