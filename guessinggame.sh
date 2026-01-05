#!/usr/bin/env bash
# File: guessinggame.sh
# Guessing game that asks user to guess the number of files in current directory

# Function to count files in current directory
function get_file_count {
  local count=$(ls -1 | wc -l)
  echo $count
}

# Get the actual file count
file_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Initialize guess to 0
guess=0

# Loop until user guesses correctly
while [[ $guess -ne $file_count ]]
do
  read -p "Enter your guess: " guess
  
  # Validate input is a number
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi
  
  # Check if guess is correct, too high, or too low
  if [[ $guess -lt $file_count ]]; then
    echo "Your guess is too low. Try again!"
  elif [[ $guess -gt $file_count ]]; then
    echo "Your guess is too high. Try again!"
  else
    echo "Congratulations! You guessed correctly!"
    echo "There are $file_count files in the current directory."
  fi
done
