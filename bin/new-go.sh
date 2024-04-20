#!/bin/bash

# function to prompt the user for a foldername
get_foldername() {
	read -p "Enter folder name: " foldername
	echo "$foldername"
}

open_folder() {

	cd "$HOME/golangas/playground" || exit
  mkdir -p $foldername
	touch $foldername/main.go

  cat > $foldername/main.go <<EOF
package main

import (
  "fmt"
)

func main() {
  s := []string{"a", "b", "c"}

  res := someFunc(s)

  fmt.Println(res)
}

func someFunc(s []string) int {
  len := len(s)

  return len
}
EOF

	nvim "$foldername/main.go"
}

# Prompt the user if no foldername is provided
if [[ $# -eq 0 ]]; then
	foldername=$(get_foldername)
fi

# if more than one argument is given, print error message and stop script
if [[ $# -gt 1 ]]; then
  echo "Please provide only one argument - folder name (can be nested)"
	echo "Example: new-go leetcode/123"
	exit 1
fi

# set foldername to the argument given to the script
if [[ $# -eq 1 ]]; then
	foldername=$1
fi

open_folder
