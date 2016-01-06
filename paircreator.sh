#!/bin/bash
function writeFile {
FILE=~/.pairs

echo pairs: > "$FILE"
echo "  $initial1: $name1" >> $FILE
echo "  $initial2: $name2" >> $FILE
echo email_addresses: >> $FILE
echo "  $initial1: $email1" >> $FILE
echo "  $initial2: $email2" >> $FILE

echo $FILE file written.
}

function collectInput {
clear
echo First pairs initials, followed by enter
read initial1
clear
echo First pairs name, followed by enter
read name1
clear
echo First pairs email, followed by enter
read email1
clear
echo Second pairs initials, followed by enter
read initial2
clear
echo Second pairs name, followed by enter
read name2
clear
echo Second pairs email, followed by enter
read email2
clear
}

FILE=~/.pairs
if [ -f $FILE ]
then
  echo File exists. Overwrite? y/n [case sensitive]
  read answer
  if [[ "$answer" == y* ]]
    then collectInput
    writeFile
  else echo Aborted
  fi
else collectInput
  writeFile
fi
