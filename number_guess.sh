#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=guessing_game --no-align -t -c"

START_PROGRAM() {
  if [[ -z $1 ]]; then
    echo "Enter your username:"
    read USERNAME
    VALIDATE_USERNAME $USERNAME
  else
    VALIDATE_USERNAME $1
  fi
}

VALIDATE_USERNAME() {
  USERNAME=$1
  while [[ ${#USERNAME} -ge 22 ]]; do
    echo "Username must be less than 22 characters. Try again:"
    read USERNAME
  done
  INIT_GUESSING_GAME $USERNAME
}

GUESS_GAME() {
  COUNTER_GUESS=1
  while true; do
    read GUESS_NUMBER
    if [[ $GUESS_NUMBER =~ ^-?[0-9]+$ ]]; then
      if ((GUESS_NUMBER > SECRET_NUMBER)); then
        echo "It's lower than that, guess again:"
      elif ((GUESS_NUMBER < SECRET_NUMBER)); then
        echo "It's higher than that, guess again:"
      elif ((GUESS_NUMBER == SECRET_NUMBER)); then
        echo "You guessed it in $COUNTER_GUESS tries. The secret number was $SECRET_NUMBER. Nice job!"
        RESULT_INSERT_GAME=$($PSQL "INSERT INTO games(user_id,guesses) VALUES($USER_ID,$COUNTER_GUESS)")
        break
      fi
      ((COUNTER_GUESS++))
    else
      echo "That is not an integer, guess again:"
    fi
  done
}

INIT_GUESSING_GAME() {
  USERNAME=$1
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

  if [[ -z $USER_ID ]]; then
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    RESULT_INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  else
    RESULT=$($PSQL "SELECT COUNT(*), MIN(guesses) FROM games WHERE user_id=$USER_ID" | sed 's/^[ \t]*//;s/[ \t]*$//')

    IFS="|" read -r GAMES_PLAYED BEST_GAME <<<"$RESULT"

    echo Welcome back, $USERNAME\! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
  fi

  SECRET_NUMBER=$((RANDOM % (1000) + 1))
  echo "Guess the secret number between 1 and 1000:"
  GUESS_GAME
}

START_PROGRAM $1
