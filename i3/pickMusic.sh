#!/bin/sh

echo 1\) Spotify
echo 2\) Other

read programNumber

if [ "$programNumber" == "1" ]
then
  exec spotify & disown
elif [ $programNumber == "2" ]
then
  exec brave
elif [ $programNumber == "3" ]
then
  exec brave
else
  exec brave
fi
