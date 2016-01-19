#!bin/bash


# read input of project name from user
# make project folder
# make js, spec and css folders in project folder
# copy in jquery, mocha, chair, and spec files in
# intialize git in the folder
# ask to run pairs command to set authors
# create initial commit with blank files

clear
echo What is the project called?
read project

mkdir ../$project
