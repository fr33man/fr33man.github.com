#!/usr/pkg/bin/bash                                                                     
if [ "$1" = "--help" ]; then
    echo "Usage: cat 'any text' | $0"
    echo "You will receive URL of your published 'any text'."
    exit
fi
txt=`cat`
echo `curl -s -S --data-urlencode "txt=$txt" "http://pastehtml.com/upload/create?input_type=mrk&result=address"`
