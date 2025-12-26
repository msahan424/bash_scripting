#!/usr/bin/env bash
#Lab01 Exercise 1 -automated version
set -e #stop if any command fails 
#1)Create systemScripting 
mkdir -p SystemScripting1
#change into it
cd SystemScripting1
#3)Create lab01 and enter it
mkdir -p lab01
cd lab01
#4)Create two files
touch alpha.txt beta.txt
#5)Create two folders
mkdir -p  folderA folderB
#6)List contents
echo "== Current directory contents =="
ls -l
#7) Create an alies to copy folder
alias cpr='cp -r'
#8)List aliases
echo "== Aliases after creating cpr =="
alias
#9)Use alias to copy one folder
cpr folderA folderA_copy
#10)Verify copy
echo "== After copyoing fodlerA to folderA_copy =="
ls -l
#11)Removes aliases and verify
unalias cpr
echo "== Aliases after removing cpr =="
#12)ename one file
mv alpha.txt alpha_renamed.txt
#13)Move second file into a folder
mv beta.txt folderB/

echo "== Final structure =="
ls -l
echo "Done"

