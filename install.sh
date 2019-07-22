#!/bin/bash
chmod +x brightness-controller.sh

if [ ! -d ~/bin ]
then 
    mkdir ~/bin
fi

mv brightness-controller.sh ~/bin

echo Done. Close the terminal
rm -rf -- "$(pwd -P)" && cd ..
