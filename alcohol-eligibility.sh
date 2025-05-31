#!/bin/bash

echco " Welcome To Check Drinking Age"

echo "Please enter your age:"
read age
if (( age >= 18 )); then
   echo "You are eligible to purchase and drink alcohol at this store"

else
   echo "You are not eligible to drink or purchase alcohol at this store"

fi
