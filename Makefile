LATEX=pdflatex
BIBTEX=bibtex
VIEWER=xdg-open

MAIN=main
PDF=main.pdf

build:
	$(LATEX) $(MAIN).tex
	$(BIBTEX) $(MAIN).aux
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex

show: build
	$(VIEWER) $(PDF)

clean:
	rm -f *log *aux *lof *lot *toc

purge: clean
	rm -f $(PDF)
