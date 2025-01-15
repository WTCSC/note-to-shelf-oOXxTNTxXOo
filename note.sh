#!/bin/bash
echo "hello welcome to the note tool the only tool you'll ever need to make or break notes."
echo "what note would you like to break?    add "note" - note    break "note" - break"
#echo "[${add}], [${bra}], [${search}], [${list}] 

read -p ": " inp
while [[ -z "$inp" ]]; do
    echo "Don't be shy! ill take your notes!"
    read -p ": " inp
done 

#echo "Invalid Choice [${choice}]..."
#add()
#{
#    echo hi you added :]
#}
#
#bra()
#{
#   echo destory this file!
#}
#
#search()
#{
#echo ??? which file?
#}
#
#list()
#{
# echo this, that, and some more of this
#}
#notehelp=("add: whats it does $example of how to use" "bra: A" "search: search 'A' can auto complete")
