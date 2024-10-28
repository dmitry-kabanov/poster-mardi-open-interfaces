TEX_ROOT_STEM = mardi-annual-meeting-2024-open-interfaces
TEX_ROOT_FILE = $(TEX_ROOT_STEM).tex
TEX_ROOT_AUX = $(TEX_ROOT_STEM).aux

.PHONY : all
all :
	latexmk -pdf $(TEX_ROOT_FILE)


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
