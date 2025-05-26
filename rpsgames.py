#!/usr/bin/env python3

rock = '''
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
'''

paper = '''
    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)
'''

scissors = '''
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
'''
import random
print("Welcome to Rock Paper Scissors!")
choice = input("What do you choose? Type 0 for rock, 1 for paper or 2 for scissors :").lower()
random = random.choice([rock, paper, scissors])

if choice == '0':
    print("You Choose :" + rock)
    print("Computer Choose:")
    print(random)
    if random == rock:
        print("You Draw")
    elif random == paper:
        print("You Loose")
    elif random == scissors:
        print("You Win")

elif choice == '1':
    print("You Choose :" + paper)
    print("Computer Choose:")
    print(random)
    if random == rock:
        print("You Win")
    elif random == paper:
        print("You Draw")
    elif random == scissors:
        print("You Loose")

elif choice == '2':
    print("You Choose :" + scissors)
    print("Computer Choose:")
    print(random)
    if random == rock:
        print("You Loose")
    elif random == paper:
        print("You Win")
    elif random == scissors:
        print("You Draw")

else :
    print("You type in a wrong choice")
