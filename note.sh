#!/bin/bash
case "$1" in # used cases as i thought they might work better than using function calls. 
    add) 
        if [ -e $2 ]; then # - this was working idk how it broke. this was how I checked if files aleady existed
            echo "File $2 already exists!"
        else
            tmps=$(date +"%Y-%m-%d %H:%M:%S") # - this adds a timestamp of creation for each file in the file which is readable. 
            echo "$tmps" >> "$2".txt # - this creates a file that has the same of inputed string/name. I used echo becuase I dont truly understand how touching files works atleast with this code. 
        fi
    ;; 
    bra) echo "$1" # - if i have time ill add file deletion. 
    
    ;;
    list) 
        find . -name '*.txt' | while read line; do  #this read though each file that has the ending .txt and allows me to output these files as a formated output. 
            ti=cat $line  # - gives the context of whats inside a file. would rather use something differnt to extract the timestamp from the file like regex or having the timestamp in a dif location in the file. however I went this way becuase im truly lost rn. 
            nf="${line/#"./"}"  #i used two lines becuase I could figure out how to get it working with one line. moreover this line just removes the prefix and the suffix from each file outputted. 
            echo "$ti" - ${nf/%".txt"}
        done
    ;;
    search) 
    co= complete -D "$2" # - dosent work been looking into it have no clue were to start still after an hour of searching. this search is supposed to auto complete any search input and match it with a match.
    echo $co
    ;;
    *)echo "the options are add, bra, list, search." ;; # i added this in an attempt to check for missinputs or wrong inputs. theres still probably more i could add but im stil clueless as to what rn. 
esac
# elif [ "$1" == "help"]; then  # added this for later to see if i could add a help thing.
#     echo "helping hand"
# else
#     echo "not enough inputs input note.sh help for clairity"
# fi


#notehelp=("add: whats it does $example of how to use" "bra: A" "search: search 'A' can auto complete") - some notes 
#2025-01-06 12:04:06 - Schedule dentist appointment
#find "./" -type f -name "*.txt"
#bash search 'Searchable'