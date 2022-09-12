# (c) 2022-Present IObundle, Lda, all rights reserved
#
# Makefile for creating documents in the build directory
#

SHELL = /bin/bash

all: report.pdf

#text 
TSRC:=$(subst tsrc/, , $(wildcard tsrc/*.tex))
%.tex: tsrc/%.tex
	cp $< $@

#document class
TSRC+=esda.cls
esda.cls: tsrc/esda.cls
	cp $< $@

#citations
TSRC+=citations.bib
citations.bib: tsrc/citations.bib
	cp $< $@

TSRC+=abbrvunsrtnat.bst
abbrvunsrtnat.bst: tsrc/abbrvunsrtnat.bst
	cp $< $@


#build document
report.pdf: figures/* $(TSRC)
	pdflatex -jobname report report.tex
	bibtex report
	pdflatex -jobname report report.tex
	pdflatex -jobname report report.tex

#view document
view: report.pdf
	evince $< &

clean:
	@find . -maxdepth 1 -type f -not \( -name Makefile -o \
	-name README.md -o -name LICENSE -o -name report.pdf \) -delete
	@rm -f tsrc/*~

debug:
	@echo $(TSRC)

.PHONY: debug view clean

