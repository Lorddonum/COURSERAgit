#!/bin/bash

function guess_files {
    local file_count=$(ls -1 | wc -l)
    while true; do
        echo "Guess how many files are in the current directory:"
        read guess
        if [[ $guess -lt $file_count ]]; then
            echo "Your guess is too low."
        elif [[ $guess -gt $file_count ]]; then
            echo "Your guess is too high."
        else
            echo "Congratulations! You guessed it right."
            break
        fi
    done
}

guess_files
