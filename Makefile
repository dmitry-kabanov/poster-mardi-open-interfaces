TEX_ROOT_STEM = mardi-annual-meeting-2024-open-interfaces
TEX_ROOT_FILE = $(TEX_ROOT_STEM).tex
TEX_ROOT_AUX = $(TEX_ROOT_STEM).aux

TIKZ_PIC_1 := tikz/oif_bindings.pdf
TIKZ_PIC_2 := tikz/pairwise_bindings.pdf
TIKZ_PICTURES := $(TIKZ_PIC_1) $(TIKZ_PIC_2)

.PHONY : all
all : $(TEX_ROOT_FILE)
	latexmk -pdf $(TEX_ROOT_FILE)

$(TEX_ROOT_FILE) : $(TIKZ_PICTURES)


.PHONY : format
format :
	latexindent --local --overwrite $(TEX_ROOT_FILE)


.PHONY : clean
clean :
	latexmk -c

.PHONY : update-bibliography
update-bibliography:
	jabref --nogui --aux \
		$(PWD)/$(TEX_ROOT_AUX),$(PWD)/bibliography.bib \
		$(PWD)/bibliography-external.bib

tikz/pairwise_bindings.pdf : tikz/pairwise_bindings.tex
	cd tikz/ && latexmk -pdf pairwise_bindings.tex

tikz/oif_bindings.pdf : tikz/oif_bindings.tex
	cd tikz/ && latexmk -pdf oif_bindings.tex
