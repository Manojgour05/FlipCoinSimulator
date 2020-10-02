#!/bin/sh

echo "Flip Coin Simulation"
flipCoin=$(($RANDOM%2))


if [ $flipCoin -eq 0 ]
then
	echo "Head winner"
else
	echo "Tail winner"
fi

# As a simulator, loop through Multiple times of flipping a coin

hcount=0
tcount=0
for((i=1;i<=10;i++))
do
	num=$(($RANDOM%2))
if [ $num -eq 0 ]
	then
#		echo "Head"
     		((hcount++))
else
#		echo "Tail"
		((tcount++))
fi
done
#		echo "Head won : $hcount"
#		echo "Tail won : $tcount"


# Show if it’s a Win or Tie.

for((i=1;i<=30;i++))
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
	if [ $hcount -eq 21 ]
then
   	 echo "Head is more"
        elif [ $tcount -eq  21 ]
then
	echo "Tail is more"

else
        	echo "Tie"
fi
done
                echo "Head won : $hcount"
                echo "Tail won : $tcount"

if [ $hcount -lt $tcount ]
then
	p1=$(( $tcount - $hcount ))
	echo "Tail is won by $p1 point"
elif [ $tcount -lt $hcount ]
then
	p2=$(( $hcount - $tcount ))
	echo "Head is won by $p2"
elif [ $hcount -eq $tcount ]
then
	echo "it is tie"
fi
