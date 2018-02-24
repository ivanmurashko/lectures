all: pdf ps

algorithmic.sty: algorithms.ins algorithms.dtx
	latex algorithms.ins

ps: main.tex main.bib algorithmic.sty
	latex main.tex
	bibtex main
	texindy -M texindy -L russian -C utf8 main.idx
	latex main.tex
	cp main.dvi qo.dvi

pdf: main.tex main.bib algorithmic.sty questions.tex
	pdflatex main.tex
	bibtex main
	texindy -M texindy -L russian -C utf8 main.idx
	pdflatex main.tex
	pdflatex questions.tex
	cp main.pdf qo.pdf

install: pdf
	cp qo.pdf ../pdfs

clean:
	rm -rf qo.pdf qo.dvi main.aux main.bbl main.dvi main.pdf main.blg main.toc main.out questions.pdf questions.aux questions.log
	rm -rf algorithmic.sty  algorithm.sty
	rm -rf main.blg main.toc main.out main.idx main.ilg main.ind
	find . \( -name "*.log" -o -name "*~" \) -exec rm -rf {} \; 
