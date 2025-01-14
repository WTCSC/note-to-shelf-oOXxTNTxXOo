#!/bin/bash
#bash note.sh or bash test_note.sh
echo "hello welcome to the note tool the only tool you'll ever need to make or break notes."
echo "what note would you like to make or break?     add "note" - make    break "note" - break"
echo "[${add}], [${bra}], [${search}], [${list}]"
read -p ": " name
while [[ -z "$name" ]]; do
    echo "Don't be shy! ill take your notes!"
    read -p ": " name
done


# toppings=("chocolate chips" "gummy bears" "potato chips" 
#           "marshmallows" "pickles" "peanut butter" 
#           "banana slices" "coffee beans" "corn flakes")
# echo "Invalid choice [${choice}]..." 
add()
{
    echo hi you added
}

bra()
{
    echo destroy this file!
}

search()
{
    echo ??? which file?
}

list()
{
    echo this, that, and some more of this
}

notehelp=("add: what it does & example of how to use" "bra: A" "list: A" "search: search 'A' - can auto complete")