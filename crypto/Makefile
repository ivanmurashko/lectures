all: pdf ps

algorithmic.sty: algorithms.ins algorithms.dtx
	latex algorithms.ins

ps: main.tex main.bib algorithmic.sty
	latex main.tex
	bibtex main
	latex main.tex
	cp main.dvi crypto.dvi

pdf: main.tex main.bib algorithmic.sty
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	cp main.pdf crypto.pdf
	cd presentation && $(MAKE) pdf

install: pdf
	cp crypto.pdf ../pdfs
	cd presentation && $(MAKE) install

clean:
	rm -rf main.aux main.bbl main.dvi main.pdf crypto.pdf crypto.dvi 
	rm -rf main.blg main.toc main.out main.idx main.ilg main.ind
	rm -rf algorithmic.sty  algorithm.sty
	find . \( -name "*.log" -o -name "*~" \) -exec rm -rf {} \; 
	cd presentation && $(MAKE) clean
