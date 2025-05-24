#!/bin/bash

echo "Welcome to even/odd number checker"
echo "Type the number you want to check?"
read number

#this would check if the number is even or odd number

if (( number % 2 == 0 )); then
       echo "Its is an even number"
else
       echo "It is an odd number"       

fi
