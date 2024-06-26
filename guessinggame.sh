#!/bin/bash

function guess_files {
    local file_count=$(ls -1 | wc -l)
    while true; do
        echo "Guess the number of files in the current directory:"
        read guess
        if [[ $guess -lt $file_count ]]; then
            echo "Your guess is too low."
        elif [[ $guess -gt $file_count ]]; then
            echo "Your guess is too high."
        else
            echo "Congratulations! You guessed the correct number of files."
            break
        fi
    done
}

guess_files
