 #!/bin/bash
 #This script will create users in your environment 
 #For you to use this script,you must be a member of the sudoeurs file 

 echo "please enter the name of the $newuser account"
 read newuser 
 echo "ready to create the  $newuser account"
 sudo adduser $newuser 
 echo "$newuser account has been created successfully"
