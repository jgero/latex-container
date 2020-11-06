#! /bin/bash

if [ $# -ne 1 ]
then
	echo "Usage $0 <Project>"
	exit
fi

xelatex -interaction=nonstopmode "$1"
biber "$1"
xelatex -interaction=nonstopmode "$1"
xelatex -interaction=nonstopmode "$1"
