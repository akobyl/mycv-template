resume.pdf: resume.tex
	latexmk -lualatex resume.tex

clean:
	rm -f resume.pdf
	rm -f *.aux *.log *.bbl *.blg *.out
