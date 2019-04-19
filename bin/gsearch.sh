#! /bin/bash   
search=""
echo "Googling: $@"
for term in $@; do
    search="$search%20$term"
done
cmd.exe /C start "http://www.google.com/search?q=$search"