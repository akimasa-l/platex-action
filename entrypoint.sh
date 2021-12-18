#!/bin/bash

# . = /github/workspace if actions/checkout
set -eux

if [ ! -f .latexmkrc ]; then
    cp /.latexmkrc $INPUT_WORKING_DIRECTORY.latexmkrc
fi

# make pdf
cd $INPUT_WORKING_DIRECTORY
latexmk $INPUT_LATEX_FILE_NAME
latexmk $INPUT_LATEX_FILE_NAME
latexmk $INPUT_LATEX_FILE_NAME