#!/bin/bash
touch notes.txt #added this to create note.txt if it dosent exist which helps prevent errors when adding. however it dosent do any checks for it it already exist. this is mainly becuase i dont think it matters that much 
case "$1" in # used cases as i thought they might work better than using function calls. 
    add) 
        # co= grep -n "$2" notes.txt - dosent work with test for some reason. 
        # if $co ; then # - verifies if note already exist or not. dosent work with test. 
        #     echo "Note "$2" already exists!"
        # else
        tmps=$(date +"%Y-%m-%d %H:%M:%S") # - this adds a timestamp of creation for each file in the file which is readable. 
        echo "$tmps" - "$2" >> notes.txt # - this creates a file that has the same of inputed string/name. I used echo becuase I dont truly understand how touching files works atleast with this code. 
        echo "Note added successfully"
        # fi
    ;; 
    # bra) echo "$1" # - if i have time ill add file deletion. 
    # ;;
    list) 
        full=$(cat notes.txt) # - created a defined item as I'm thinking it would work better for pre loading things i want to echo.  
        echo $full # - echo's the entire notes.txt file. 
    ;;
    search) 
        co= grep -n "$2" notes.txt # - auto finishes input with a note that exist in the file. dosent dosent verify if notes exist tho. 
        echo $co #- outputs note that is found. 
    ;;
    *)echo "the options are add, bra, list, search." ;; # i added this in an attempt to check for missinputs or wrong inputs.
esac
# elif [ "$1" == "help"]; then  # added this for later to see if i could add a help thing.
#     echo "helping hand"
# else
#     echo "not enough inputs input note.sh help for clairity"
# fi