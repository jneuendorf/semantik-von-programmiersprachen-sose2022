PDFLATEX_CMD = pdflatex -synctex=0 -interaction=nonstopmode -output-directory=. -output-format=pdf -shell-escape vorlesung.tex

.PHONY: clean


quick:
	@# minus -> ignore errors
	-$(PDFLATEX_CMD)

clean:
	rm -f *.aux *.log *.out *.synctex.gz vorlesung.pdf

build: clean quick
	-$(PDFLATEX_CMD)
	open -g vorlesung.pdf
