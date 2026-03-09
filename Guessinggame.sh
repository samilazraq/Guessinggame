#!/usr/bin/env bash
# File: guessinggame.sh
# Description: A game to guess the number of files in the current directory.

# 建立一個 function 來取得當前目錄的檔案數量
function get_file_count {
  local count=$(ls -1 | wc -l)
  echo $count
}

# 初始化變數
correct_count=$(get_file_count)
guess=-1

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# 使用 while loop 讓使用者持續猜測，直到猜對為止
while [[ $guess -ne $correct_count ]]
do
  read -p "Please enter your guess: " guess

  # 使用 if 判斷式來提示太大、太小或正確
  if [[ $guess -lt $correct_count ]]
  then
    echo "Your guess is too low. Try again!"
  elif [[ $guess -gt $correct_count ]]
  then
    echo "Your guess is too high. Try again!"
  else
    echo "Congratulations! You guessed the correct number of files: $correct_count"
  fi
done
