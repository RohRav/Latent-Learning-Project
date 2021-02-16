TEX_ENGINE=xelatex

all: FinalPaper.pdf

FinalPaper.pdf: FinalPaper.tex
	${TEX_ENGINE} FinalPaper.tex
	${TEX_ENGINE} FinalPaper.tex
	biber FinalPaper
	${TEX_ENGINE} FinalPaper.tex
	rm -f FinalPaper.{aux,bbl,bcf,blg,log,tex.bbl,tex.blg,run.xml,out}
