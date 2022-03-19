all: pdf

pdf: main.tex
	pdflatex main.tex

install: pdf
	cp main.pdf ../../../pdfs/crypto_present

clean:
	rm -rf crypto*.pdf main.blg *.toc *.out *.nav *.snm main*.pdf main*.aux
	rm -rf algorithmic.sty  algorithm.sty
	find . \( -name "*.log" -o -name "*~" \) -exec rm -rf {} \; 
