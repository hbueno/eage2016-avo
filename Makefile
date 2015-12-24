PROJECT=EAGE2016
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
		$(BUILDTEX)
		$(BIBTEX) $(PROJECT)
		$(BUILDTEX)
		$(BUILDTEX)
		spdf.py $(PROJECT).pdf 1
		mv $(PROJECT)_part1.pdf $(PROJECT)-capa.pdf
		mv $(PROJECT)_part2.pdf $(PROJECT)-abstract.pdf

view:
		xdg-open Preview $(PROJECT).pdf

clean-all:
		rm -f *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.pdf *.toc *.out *~ *.gz

clean:
		rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~ *.gz
