#!/bin/bash
echo "Welcome to my Tesla shop"
echo "How much are you willing to buy the Tesla for?"
read price

if [ "$price" -ge 5000 ]; then
    echo "You have bought the car!"
else
    echo "Sorry, we can't sell our Tesla at that price. Have a nice day!"
fi
DATE
