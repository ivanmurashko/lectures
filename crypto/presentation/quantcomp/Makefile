all: pdf

algorithmic.sty:
	cd ../../ && \
	$(MAKE) algorithmic.sty && \
	cp algorithmic.sty ./presentation/quantcomp && \
	cp algorithm.sty ./presentation /quantcomp

pdf: lecture1.tex algorithmic.sty
	pdflatex lecture1.tex

install: pdf
	cp lecture1.pdf ../../../pdfs/crypto_present

clean:
	rm -rf crypto*.pdf main.blg *.toc *.out *.nav *.snm lecture*.pdf lecture*.aux
	rm -rf algorithmic.sty  algorithm.sty
	find . \( -name "*.log" -o -name "*~" \) -exec rm -rf {} \; 
