#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

myString="TestString"
referenceString="password"
# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
read  -p "Password guess:" myString
# TASK 2: Improve it by rewriting it to use the if command
echo
if [ $myString = $referenceString ]
then
  echo "You guessed it right!"
else
  read  -p "Guess the password: " myString
  echo "The password eludes your guess!"
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
  if [ $myString = $referenceString ]
  then
    echo "You guessed the password right!"
   else
     read  -p "Guess the password: " myString
   fi
 fi
 #           *** Do not use the exit command
