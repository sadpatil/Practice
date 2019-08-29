#!bin/bash

I=2
while [ $I -lt 100 ]
do
if [ $(($I%2)) -ne 0 ] && [ $(($I%3)) -ne 0 ] && [ $(($I%5)) -ne 0 ] && [ $(($I%7)) -ne 0 ]
#if [ $(($I/2)) -eq 1 ] && [ $(($I/3)) -eq 1 ] && [ $(($I/5)) -eq 1 ] && [ $(($I/7)) -eq 1 ]
then
echo "$I"
I=$(($I+1))
elif [ $(($I/2)) -eq 1 ] && [ $(($I%2)) -eq 0 ]
then
echo "$I"
I=$(($I+1))

elif [ $(($I/3)) -eq 1 ] && [ $(($I%3)) -eq 0 ]
then
echo "$I"
I=$(($I+1))
elif [ $(($I/5)) -eq 1 ] && [ $(($I%5)) -eq 0 ]
then
echo "$I"
I=$(($I+1))
elif [ $(($I/7)) -eq 1 ] && [ $(($I%7)) -eq 0 ]
then
echo "$I"
I=$(($I+1))
else
I=$(($I+1))
fi
done

