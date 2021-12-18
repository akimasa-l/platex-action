#!/bin/bash

# . = /github/workspace if actions/checkout
set -x

if [ ! -f .latexmkrc ]; then
    cp /.latexmkrc $INPUT_WORKING_DIRECTORY.latexmkrc
fi

# make pdf
cd $INPUT_WORKING_DIRECTORY
latexmk $INPUT_LATEX_FILE_NAME -f 
latexmk $INPUT_LATEX_FILE_NAME -f 
latexmk $INPUT_LATEX_FILE_NAME -f 
echo "it may be successful."