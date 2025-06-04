#!/bin/bash

score=0

echo "=============================="
echo "🧪 Linux Basics Quiz for DevOps"
echo "=============================="
echo "Answer the following 10 questions:"
echo

# Define questions
questions=(
  "Which command is used to list files in a directory?
a) list
b) ls
c) dir
d) show"

  "What command is used to change the current directory?
a) move
b) cd
c) chdir
d) goto"

  "Which command shows the current working directory?
a) pwd
b) whereami
c) ls -cwd
d) currdir"

  "Which command is used to copy files?
a) cp
b) mv
c) copy
d) cpy"

  "How do you see the contents of a text file?
a) see
b) cat
c) txt
d) showfile"

  "Which command is used to remove a file?
a) del
b) rm
c) erase
d) remove"

  "What does the 'chmod' command do?
a) Changes file ownership
b) Changes file name
c) Changes file permissions
d) Moves files"

  "Which command shows running processes?
a) listproc
b) show -p
c) top
d) runstat"

  "How do you create a new directory?
a) mkdir
b) makedir
c) newdir
d) createdir"

  "What command updates your Debian system?
a) sudo apt update
b) sudo update system
c) apt refresh
d) upgrade-debian"
)

# Correct answers
answers=(b b a a b b c c a a)

# Ask questions
for i in {0..9}; do
  echo
  echo "Q$((i+1)): ${questions[$i]}"
  read -p "Your answer (a/b/c/d): " user_answer

  if [[ "${user_answer,,}" == "${answers[$i]}" ]]; then
    echo "✅ Correct!"
    ((score++))
  else
    echo "❌ Incorrect. The correct answer was '${answers[$i]}'"
  fi
done

# Final score
echo
echo "=============================="
echo "🎓 Quiz Completed!"
echo "You scored $score out of 10"
echo "=============================="

# Encouragement message
if [ $score -eq 10 ]; then
  echo "🌟 Perfect! You're a Linux pro already!"
elif [ $score -ge 7 ]; then
  echo "👏 Great job! You're well on your way to mastering Linux."
elif [ $score -ge 4 ]; then
  echo "👍 Not bad! Keep practicing — you're getting there!"
else
  echo "💡 Don't worry — everyone starts somewhere. Keep learning and practicing!"
fi

echo "=============================="

