all: resume.pdf resume.txt

resume.pdf: resume.tex
	latexmk -lualatex resume.tex

resume.txt: resume.tex
	pandoc -s resume.tex -o resume.txt -t plain --wrap=none


clean:
	rm -f resume.pdf
	rm -f resume.txt
	rm -f *.aux *.log *.bbl *.blg *.out
