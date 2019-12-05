#!/bin/bash
if (($# == 3))
then
if (($1 < 10))
then day="d0$1"
else day="d$1"
fi
mkdir "$day"
for ((i = 0; i < $2; i++))
do
if (($i < 10))
then mkdir "$day/ex0$i"
else mkdir "$day/ex$i"
fi
done
else
for ((i = 0; i < $1; i++))
do
if (($i < 10))
then mkdir "ex0$i"
else mkdir "ex$i"
fi
done
fi
