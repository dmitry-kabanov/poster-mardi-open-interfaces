# PDF-generating modes are:
# 1: pdflatex, as specified by $pdflatex variable (still largely in use)
# 2: postscript conversion, as specified by the $ps2pdf variable (useless)
# 3: dvi conversion, as specified by the $dvipdf variable (useless)
# 4: lualatex, as specified by the $lualatex variable (best)
# 5: xelatex, as specified by the $xelatex variable (second best)
$pdf_mode = 1;

# `set_tex_cmds` applies to all *latex commands (latex, xelatex, lualatex, ...),
# so no need to specify these each. This allows to simply change `$pdf_mode`
# to get a different engine. Check if this works with `latexmk --commands`.
set_tex_cmds("-shell-escape -synctex=1 %O %S");

$clean_ext = ("run.xml pytxcode");
