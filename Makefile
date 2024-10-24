TEX_ROOT_FILE = mardi-annual-meeting-2024-open-interfaces.tex


.PHONY : format
format :
	latexindent --local --overwrite $(TEX_ROOT_FILE)
