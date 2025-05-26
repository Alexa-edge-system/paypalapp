#!/bin/bash

echo "please enter your ticket number"
read ticket

if [ "$ticket" -eq 4001 ]; then
    echo "You are the winner!"
else
    echo "Please try again."
fi
