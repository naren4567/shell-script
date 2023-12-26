#!/bib/bash

echo "please enter your username and password:"

read -s USERNAME #THE VALUE ENTERD ABOVE WILL BE AUTOMATICALLY ATTACHED TO VARIABLE
read -s PASSWORD 

echo "Username" is: $USERNAME, "Password" is: $PASSWORD