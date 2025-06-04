#!/bin/bash

# linux_eval_test.sh - A Linux evaluation script for teammates
# Author: Val
# Description: This script tests basic Linux knowledge using interactive questions.

score=0
total=5

echo "🧪 Welcome to the Linux Skills Evaluation!"
echo "Answer the following questions. Type your response and press Enter."
echo "----------------------------------------"

# Question 1
echo "1. What command lists all files, including hidden ones, in the current directory?"
read -p "Your answer: " ans
if [[ "$ans" == "ls -a" || "$ans" == "ls -la" ]]; then
    echo "✅ Correct!"
    ((score++))
else
    echo "❌ Incorrect. Expected: ls -a"
fi

# Question 2
echo -e "\n2. How do you check the current working directory?"
read -p "Your answer: " ans
if [[ "$ans" == "pwd" ]]; then
    echo "✅ Correct!"
    ((score++))
else
    echo "❌ Incorrect. Expected: pwd"
fi

# Question 3
echo -e "\n3. Which command is used to see running processes?"
read -p "Your answer: " ans
if [[ "$ans" == "ps" || "$ans" == "top" ]]; then
    echo "✅ Correct!"
    ((score++))
else
    echo "❌ Incorrect. Expected: ps or top"
fi

# Question 4
echo -e "\n4. What command shows the manual page for a command?"
read -p "Your answer: " ans
if [[ "$ans" == "man" ]]; then
    echo "✅ Correct!"
    ((score++))
else
    echo "❌ Incorrect. Expected: man"
fi

# Question 5
echo -e "\n5. How do you search for a word 'val' in a file named notes.txt?"
read -p "Your answer: " ans
if [[ "$ans" == "grep val notes.txt" ]]; then
    echo "✅ Correct!"
    ((score++))
else
    echo "❌ Incorrect. Expected: grep val notes.txt"
fi

# Final Score
echo "----------------------------------------"
echo "📝 Test complete!"
echo "Your Score: $score / $total"

if [ $score -eq $total ]; then
    echo "🎉 Excellent! You're a Linux ninja!"
elif [ $score -ge 3 ]; then
    echo "👍 Good job! You’re on the right path."
else
    echo "📘 Keep practicing! You'll get better."
fi

