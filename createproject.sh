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

if [ ! -d "$project" ]; then # if the directory does not exist
  mkdir ../"$project"
  mkdir ../"$project"/js ../"$project"/css ../"$project"/spec
  cp cp/js/* ../"$project"/js/
  cp cp/css/* ../"$project"/css/
  cp cp/spec/* ../"$project"/spec/
  cp cp/ ../"$project"/
  echo "Directory created and files added"
else
  echo "Directory already exists"
fi


# make sure that works then

# GIT_ADD="."
# INITIAL_COMMIT_MESSAGE="Initial Commit"
#
# cd ../"$project"
#
# echo "Enter pairs intials"
# read $pairinitial
#
# if [ -d ".git" ]; then
#   echo "Git already init"
#   exit 1
# else
#   git init
#   if (( $? )); then
#     echo "Unable to git init"
#     exit 1
#   fi
#   git add "$GIT_ADD"
#   if (( $? )); then
#     echo "Unable to git add"
#     exit 1
#   fi
#   git pair njh "$pairinitial"
#   if (( $? )); then
#     echo "Unable to set authors"
#     exit 1
#   fi
#   git commit -m "$INITIAL_COMMIT_MESSAGE"
#   if (( $? )); then
#     echo "Unable to git commit"
#     exit 1
#   fi
#   echo "The directory was "
