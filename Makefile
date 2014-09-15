kenkel-cv.png : kenkel-cv.pdf
	convert -alpha off -density 300 -depth 8 -quality 85 kenkel-cv.pdf[0] kenkel-cv.png

kenkel-cv.pdf : kenkel-cv.tex kenkel-cv-body.tex
	latexmk -bibtex- kenkel-cv
	latexmk -c

kenkel-cv-body.tex: cv.md
	pandoc cv.md -o kenkel-cv-body.tex
