IMGDIR := ./img
IMGFILES.src := $(wildcard $(IMGDIR)/*.svg)

TEXFILES := $(wildcard *.tex)
TEXFILES.main := $(shell grep -l "begin{document}" $(TEXFILES))
TEXFILES.include := $(filter-out ${TEXFILES.main}, $(TEXFILES))

IMGFILES := $(patsubst %.svg, %.pdf, $(IMGFILES.src))
PDFFILES := $(patsubst %.tex, %.pdf, $(TEXFILES.main))

.PHONY: all pdf clean distclean

all: pdf

pdf: $(IMGFILES) $(PDFFILES)

$(IMGFILES): $(IMGDIR)/%.pdf : $(IMGDIR)/%.svg
	inkscape -z -D -f $< -A $@

# $(IMGFILES).png: $(IMGDIR)/%.png : $(IMGDIR)/%.svg
# 	inkscape -z -D -f $< -d 300 -e $@

$(PDFFILES): %.pdf : %.tex $(TEXFILES.main) $(TEXFILES.include) $(IMGFILES)
	pdflatex $(patsubst %.pdf, %, $@)
	bibtex $(patsubst %.pdf, %, $@)
	pdflatex $(patsubst %.pdf, %, $@)
	pdflatex $(patsubst %.pdf, %, $@)

clean:
	rm -f *.out *.aux *.log *.bbl *.dvi *.ps *.blg *~ *.bak *.ilg *.ind *.idx *.dep *.toc *.brf *.lbl *.nav *.snm *.vrb

distclean: clean
	rm -f $(PDFFILES) $(IMGFILES)
