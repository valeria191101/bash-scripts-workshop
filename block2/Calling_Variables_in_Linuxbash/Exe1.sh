#!/bin/bash

echo "Global variables:"
echo "HOME: $HOME"
echo "PATH: $PATH"
echo "SHELL: $SHELL"
echo "USER: $USER" 
echo "PWD: $PWD"
echo "TERM: $TERM"
echo "PS1: $PS1"
echo "----------------------------"

echo "Shell Aeguments:"
echo "Scripts name: $0"
echo "All arguments (\$@): $@" 
echo "Arguments listed (\$@): $@"
echo "Number of arguments: $#"
echo "----------------------------"

ls > /dev/null
echo "Exist status of last command (ls): $?"

echo "PID of current shell: $$"
