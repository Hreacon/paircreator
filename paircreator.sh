#!bash/script
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

echo pairs: >> ~/.pairs
echo "  $initial1: $name1" >> ~/.pairs
echo "  $initial2: $name2" >> ~/.pairs
echo email_addresses: >> ~/.pairs
echo "  $initial1: $email1" >> ~/.pairs
echo "  $initial2: $email2" >> ~/.pairs

echo done
