#!/bin/bash

# . = /github/workspace if actions/checkout
set -eux

if [ ! -f .latexmkrc ]; then
    cp /.latexmkrc $WORKING_DIRECTORY.latexmkrc
fi

# make pdf
cd $WORKING_DIRECTORY
latexmk $INPUT_LATEX_FILE_NAME