#!/bin/bash

# Bank Authentication Script

echo "Enter your name:"
read name

echo "Welcome to TD Bank, $name!"

# Set a predefined correct PIN
correct_pin="1717"

echo "Enter your PIN:"
read  pin  # -s hides input for security

if [ "$pin" == "$correct_pin" ]; then
    echo "PIN verified successfully."

    # Ask for withdrawal amount
    echo "How much would you like to withdraw?"
    read amount

    # Simulate withdrawal process
    echo "Processing withdrawal of $amount..."
    sleep 2  # Simulates transaction time

    echo "Withdrawal successful! You have withdrawn $amount."

    echo "Thanks for choosing TD Bank, $name!"
else
    echo "Incorrect PIN. Bank account locked  contact admin."
fi

