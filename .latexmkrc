#!/usr/bin/env perl
# example .latexmkrc 

# platex pdf-sync
$latex = 'platex -synctex=1 -halt-on-error -interaction=nonstopmode';

# platex less-error-message
$latex_silent = 'platex -synctex=1 -halt-on-error -interaction=nonstopmode';

# pbibtex
$bibtex = 'pbibtex';

# div -> pdf output main.pdf 
$dvipdf = 'dvipdfmx %B';

# index
$makeindex = 'mendex %O -o %D %S';

$max_repeat = 4;

# dvi -> pdf
$pdf_mode = 3;

# preview update
$pdf_update_method = 4;