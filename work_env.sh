#!/bin/sh
### Init one time, for personal work environment build.
mkdir task src doc note tmp
mkdir task/buglist task/tasklist




### task
cd task/buglist
echo "bug information, at most 5 character:"
read bugname

mkdir bug_$bugname src note.md log

echo "Do you have related source code:[Y/n]"
read confirm
echo $confirm
if [ "${confirm}" == "y" ] || [ "${confirm}" == "Y" ] || [ "${confirm}" == " " ]; then
    ln -sf task/src src/code
else
    mkdir src/code
fi
