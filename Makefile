tex = phdthesis

all: pdf 

# Build the PDF

pdf:
	xelatex $(tex)

cite:
	xelatex $(tex) ; bibtex $(tex) ; xelatex $(tex) ; xelatex $(tex)


outline:
	pandoc outline.md --chapters --toc --latex-engine=xelatex -o OutlinePhdInari.pdf

clean:
	rm -f *.zip *.aux *.out *.blg *.toc *.mtc *.maf *.mtc[0-9] chapters/*.aux
