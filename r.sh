#!/bin/bash

if [[ "$1" == "clean" ]]; then
    rm -f master-thesis.{bib,aux,log,bbl,bcf,blg,run.xml,toc,tct,pdf,out}
else
    f=master-thesis
    xelatex $f
    biber   $f
    xelatex $f
    xelatex $f

    rm -f $f.{bib,aux,log,bbl,bcf,blg,run.xml,toc,tct,out}
fi
