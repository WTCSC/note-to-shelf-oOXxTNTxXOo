#!/bin/bash
# read -p ": " inp
# while [[ -z "$inp" ]]; do
#     echo "Don't be shy! ill take your notes!"
#     read -p ": " inp
# done 

if [ "$1" ]; then
    if [ "$2" ]; then
        case "$1" in
            add) echo "add"
                if [ "$2" == "check date format"]; then
                    echo  "$(date +%Y-%m-%d)"
                fi
                echo $2
                string="$2"
                x=
                if [[ "${string}" == x* || "${string}" == *x ]]; then
                cat $file
            ;;
            bra) echo "bra";;
            list) echo "list";;
            search) echo "search";;
            *)echo "the options are add, bra, list, search." ;;
        esac
    else
    echo "not enough inputs"
    fi
else
    echo "not any inputs"
fi

#notehelp=("add: whats it does $example of how to use" "bra: A" "search: search 'A' can auto complete")
#