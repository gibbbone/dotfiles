#! /bin/bash
LATEX="$1"
if [ $# -eq 1 ]; then
  BIB="${1%.*}"
elif [ $# -eq 2 ]; then   
  BIB="$2"
else
  echo "Error: incorrect number of parameters."
  exit 1
fi

pdflatex $LATEX
bibtex $BIB
pdflatex $LATEX
pdflatex $LATEX
exit 0