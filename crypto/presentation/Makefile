all: pdf

algorithmic.sty:
	cd ../ && \
	$(MAKE) algorithmic.sty && \
	cp algorithmic.sty ./presentation && \
	cp algorithm.sty ./presentation 

pdf: main.tex algorithmic.sty
	pdflatex main.tex
	cp main.pdf crypto_present.pdf

install: pdf
	cp crypto_present.pdf ../../pdfs

clean:
	rm -rf main.aux main.bbl main.dvi main.pdf crypto*.pdf main.blg main.toc main.out main.nav main.snm
	rm -rf algorithmic.sty  algorithm.sty
	find . \( -name "*.log" -o -name "*~" \) -exec rm -rf {} \; 
