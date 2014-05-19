report:
	latexmk -pdf main.tex

final: report
	cp main.pdf report_14_05.pdf

clean:
	latexmk -c main.tex
