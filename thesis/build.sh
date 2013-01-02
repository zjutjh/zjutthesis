#!/bin/sh
#
# build zjutmain.tex 
#
xelatex zjutmain
bibtex zjutmain
xelatex zjutmain
xelatex zjutmain
