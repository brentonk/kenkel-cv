kenkel-cv.pdf : kenkel-cv.tex kenkel-cv-body.tex
	latexmk -bibtex- kenkel-cv
	latexmk -c

kenkel-cv-body.tex: cv.md
	pandoc cv.md -o kenkel-cv-body.tex
