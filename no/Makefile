all: pdf ps

ps: main.tex
	latex main.tex
	latex main.tex
	cp main.dvi no.dvi

pdf: main.tex
	pdflatex main.tex
	pdflatex main.tex
	cp main.pdf no.pdf

clean:
	rm -rf no.pdf no.dvi main.aux main.bbl main.dvi main.pdf main.blg main.toc main.out
	find . \( -name "*.log" -o -name "*~" \) -exec rm -rf {} \; 
