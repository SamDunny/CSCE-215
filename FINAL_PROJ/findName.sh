#!/bin/sh
# written by Sam Dunny
# CSCE215, Prof. Patrick O'Keefe

#condition if there are too many command line arguments
if [ "$#" -ne 1 ]; then
        echo "Invalid Number of Command Line Arguments"
        exit #immediately exits
fi

#string variables
FILE_NAME=/acct/common/CSCE215-Fall19
STUDENT_USR=$1

#for loop that goes line by line through Fall19
for line in $(cat $FILE_NAME); do

        #string variable for the username, the 4th column in the file
        LINE_ID=$(echo $line | cut -d',' -f4)

        #checks to see if search and user id match
        if [ "$LINE_ID" = "$STUDENT_USR" ]; then

                #string variables that store each part of the name
                FIRSTNAME=$(echo $line | cut -d',' -f1)
                MIDDLE=$(echo $line | cut -d',' -f2)
                LASTNAME=$(echo $line | cut -d',' -f3)

                #prints out the full name
                echo $FIRSTNAME $MIDDLE $LASTNAME

                #boolean condition that reports if user is found
                FOUND="true"
        fi
done;

#condition if the user is never found
if [ -z $FOUND ]; then
        #error message
        echo "Sorry that person is not in CSCE215 this semester"
fi
