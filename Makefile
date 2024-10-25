TEX_ROOT_FILE = mardi-annual-meeting-2024-open-interfaces.tex

.PHONY : all
all :
	latexmk -pdf $(TEX_ROOT_FILE)


.PHONY : format
format :
	latexindent --local --overwrite $(TEX_ROOT_FILE)


.PHONY : clean
clean :
	latexmk -c
