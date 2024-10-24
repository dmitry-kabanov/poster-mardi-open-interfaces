\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mmposter}

% Developed & maintained by
% Achim Krause
% krauseac@wwu.de

\LoadClass[twocolumn,8pt,a4paper]{extarticle}

\RequirePackage[utf8]{inputenc}

\RequirePackage[left=10mm, right=10mm, top=22mm, bottom=30mm, columnsep=10mm]{geometry}
\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage{pbox}
\RequirePackage{xstring}
\RequirePackage{amssymb}
\RequirePackage{enumitem}


\definecolor{clustercassis} {cmyk}{0.30, 1.00, 0.00, 0.05}
\definecolor{clusterblue} {cmyk}{1.00, 0.00, 0.10, 0.00}


\newcommand{\authors}[1]{\def\@authors{#1}}


% Font stuff:

\setlength{\parindent}{0cm}
\RequirePackage{lmodern}
%\RequirePackage{sansmathfonts}  %This behaved weird with respect to fontsize, excluded for now
%\RequirePackage{anyfontsize}

\renewcommand*\familydefault{\sfdefault}
\pagestyle{empty}

\newcommand*{\myBullet}{\raisebox{4\depth}{\(\scriptscriptstyle\blacktriangleright\)}}
\renewcommand\labelitemi{\myBullet}


\newenvironment{objectives}
{
  \begin{center}
    \begin{tcolorbox}[colback=white,colframe=clustercassis,parbox=true,left=5.5mm,right=5.5mm,
                      after={\par\medskip},before={\par\medskip\noindent}, width=0.95\linewidth]
  {\Large\color{clustercassis}Research objectives\medskip}
  \begin{itemize}
}
{
  \end{itemize}
  \end{tcolorbox}
  \end{center}
}



\RequirePackage{titlesec}
\titleformat*{\section}{\normalfont\Large\sffamily\color{clustercassis}}


%background
\renewcommand*{\maketitle}{
    \begin{tikzpicture}[overlay, remember picture, inner sep=0pt]
       \node[anchor=north west] at (current page.north west) {\includegraphics[width=\paperwidth,height=\paperheight]{./MM_CD-2018_Plakatvorlage_A0_eng_RZ.pdf}};
    \end{tikzpicture}
    \\[1.5cm]
    {\Huge\color{clustercassis}\bfseries{\@title}}
    \\[0.2cm]
    {\small\color{clustercassis}\bfseries{\@authors}}
}   
