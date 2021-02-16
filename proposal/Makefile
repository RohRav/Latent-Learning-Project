all: proposal.pdf

proposal.pdf: proposal.tex
	pdflatex proposal.tex
	pdflatex proposal.tex
	biber proposal
	pdflatex proposal.tex
	rm -f proposal.{aux,bbl,bcf,blg,log,tex.bbl,tex.blg,run.xml}
