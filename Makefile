STEM := mardi-annual-meeting-2024-open-interfaces

TEX_ROOT_AUX := $(STEM).aux
TEX_ROOT_FILE := $(STEM).tex
PDF_ROOT_FILE := $(STEM).pdf

TIKZ_PICTURES := \
   tikz/oif_bindings.pdf \
   tikz/pairwise_bindings.pdf


.PHONY : all
all : $(PDF_ROOT_FILE)

.PHONY : preview
preview :
	latexmk -pvc -pdf $(TEX_ROOT_FILE)


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

# -----------------------------------------------------------------------------
# Non-phony targets.
$(PDF_ROOT_FILE) : $(TEX_ROOT_FILE)
	latexmk -pdf $< \
		&& touch $@

$(TEX_ROOT_FILE) : $(TIKZ_PICTURES)

tikz/%.pdf : tikz/%.tex
	cd tikz/ && latexmk -pdf $(notdir $<) && touch $(notdir $@)
