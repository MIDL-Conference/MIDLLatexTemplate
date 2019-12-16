CC = latexmk
CFLAGS = -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make

.PHONY: all clean deep_clean

PDFS = midl-fullpaper.pdf midl-shortpaper.pdf
TEX = $(PDFS:.pdf=.tex)

all: $(PDFS)

%.pdf: %.tex
	$(CC) $(CFLAGS) $<
# 	pdflatex $<
# 	pdflatex $<
# 	pdflatex $<

clean:
	$(CC) -c
	rm -f *.nav *.snm

deep_clean: clean
	rm -f $(PDFS) $(BBL)