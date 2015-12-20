PROJECT=EAGE2016
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
		$(BUILDTEX)
		$(BIBTEX) $(PROJECT)
		$(BUILDTEX)
		$(BUILDTEX)

view:
		open -a Skim $(PROJECT).pdf

clean-all:
		rm -f *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.pdf *.toc *.out *~ *.gz

clean:
		rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~ *.gz
