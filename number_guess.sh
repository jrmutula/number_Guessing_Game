#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

INIT() {
  echo -e "\n~~~~~ Number Guessing Game ~~~~~\n" 

# get username
  echo -e "\nEnter your username:"
  read USERNAME

# check if user exist in database using user_id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USERNAME'")

# if user is present
  if [[ $USER_ID ]]; 
  then
    
# get number of tries
    GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM games WHERE user_id = '$USER_ID'")

# get quickest tries for game won (correct guess)
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = '$USER_ID'")

    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  else
    
# if user_name is not present in database
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

# add new user to users table
    NEW_USER=$($PSQL "INSERT INTO users(user_name) VALUES('$USERNAME')")
    
# get user_id
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USERNAME'")
  fi
  GAME
}



GAME() {
# secret number
  SECRET_NUMBER=$(($RANDOM % 1000 + 1))

# count default number of guesses
  NUMBER_OF_GUESSES=0

# guess prompt and input
  GUESSED=0
  echo -e "\nGuess the secret number between 1 and 1000:"

  while [[ $GUESSED = 0 ]]; 
  do
    read GUESS

# if input is not a number
  if [[ ! $GUESS =~ ^[0-9]+$ ]]; 
  then
    echo -e "\nThat is not an integer, guess again:"
 
# if guess is correct
  elif [[ $SECRET_NUMBER = $GUESS ]]; 
  then
    NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))
      
# insert record into the database
    RECORD_GAMES=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")
      GUESSED=1
    
# if number guessed is greater
  elif [[ $SECRET_NUMBER -gt $GUESS ]]; 
  then
    NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))
      echo -e "\nIt's higher than that, guess again:"
    
# if number guessed is lower
  else
    NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))
      echo -e "\nIt's lower than that, guess again:"
    fi
  done

echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"

}
GAME


