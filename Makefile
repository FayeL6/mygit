test :
	g++ -o test ./src/roots.c -I./include -lgsl -lgslcblas

report : doc/report.tex
	cp doc/report.tex ./
	xelatex report.tex
	rm report.tex
	rm report.aux report.log report.out

clean :
	rm report.pdf
	rm test
