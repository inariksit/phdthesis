tex = phdthesis
latex = xelatex -interaction=nonstopmode

all: pdf 

# Build the PDF

pdf:
	$(latex) $(tex)

cite:
	$(latex) $(tex) ; bibtex $(tex) ; $(latex) $(tex) ; $(latex) $(tex)


outline:
	pandoc outline.md --chapters --toc --latex-engine=xelatex -o OutlinePhdInari.pdf

clean:
	rm -f *.zip *.aux *.out *.blg *.toc *.mtc *.maf *.mtc[0-9] chapters/*.aux
