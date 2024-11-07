%% This is file "mpi2015_poster.cls" by Jens Saak
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% saak@mpi-magdeburg.mpg.de
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% You can use LATEX or PDFLATEX
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% WARNING: Kathryn Lund has changed a couple color settings, title spacing, and \myskip
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{mpi2015_poster}[2015/09/25 v1.0 mpi2015_poster (saak)]
\NeedsTeXFormat{LaTeX2e}[1995/06/01]

\RequirePackage[usenames]{color}
\RequirePackage[table]{xcolor}
\RequirePackage{fix-cm}
\RequirePackage{float}
\RequirePackage{ifpdf}
\RequirePackage[font={color=MPItext,footnotesize},labelfont={color=MPItext,bf,footnotesize}]{caption}
\RequirePackage{helvet}
\renewcommand{\ttdefault}{lmtt}
\RequirePackage{graphicx}
\RequirePackage{authblk}
\RequirePackage{tikz}
\usetikzlibrary{calc,fit}
\RequirePackage{ifthen}
\RequirePackage[onecolumn]{geometry}
\RequirePackage{etoolbox}
\RequirePackage[patch]{kvoptions}
\RequirePackage{url,doi}

\newif\ifenglish
\newif\ifportrait
\newif\ifdraft
\newif\ifarb
\newif\ifbpe
\newif\ifcsc
\newif\ifdri
\newif\ifehc
\newif\ifmsd
\newif\ifnds
\newif\ifpcf
\newif\ifpsd
\newif\ifpse
\newif\ifsct
\newif\ifimprs
\DeclareOption{arb}{\arbtrue}
\DeclareOption{bpe}{\bpetrue}
\DeclareOption{csc}{\csctrue}
\DeclareOption{dri}{\dritrue}
\DeclareOption{ehc}{\ehctrue}
\DeclareOption{msd}{\msdtrue}
\DeclareOption{nds}{\ndstrue}
\DeclareOption{pcf}{\pcftrue}
\DeclareOption{psd}{\psdtrue}
\DeclareOption{pse}{\psetrue}
\DeclareOption{sct}{\scttrue}
\DeclareOption{imprs}{\imprstrue}

\SetupKeyvalOptions{
	family=grid,
	prefix=grid@
}
\DeclareStringOption[0pt]{GridWidth}[\textwidth]
\DeclareStringOption[0]{NoGridLines}[10]

\renewcommand{\familydefault}{\sfdefault}

\newcounter{numcols}
\DeclareOption{onecolumn}{%
  \setcounter{numcols}{1}
}
\DeclareOption{twocolumn}{%
  \setcounter{numcols}{2}
}
\DeclareOption{threecolumn}{%
  \setcounter{numcols}{3}
}

\DeclareOption{german}{%
  \englishfalse
}

\DeclareOption{english}{%
  \englishtrue%
}

\DeclareOption{landscape}{
  \portraitfalse
}
\DeclareOption{portrait}{
  \portraittrue
}
\newif\ifsfmath\sfmathtrue%
\DeclareOption{serifmath}{
  \sfmathfalse%
}

\DeclareOption{draft}{
  \drafttrue
  \setlength\overfullrule{5pt}
}
\DeclareOption{final}{
  \draftfalse
  \setlength\overfullrule{0pt}
}

\newlength{\myskip}
\newlength{\logoheight}
\DeclareOption{a0paper}{
  \ifportrait
  \geometry{a0paper,margin=16mm,includeheadfoot,portrait,nomarginpar}
  \else
  \geometry{a0paper,margin=16mm,includeheadfoot,landscape,nomarginpar}
  \fi
  \setlength{\myskip}{16mm}
  \setlength{\logoheight}{40mm}

  \newcommand{\tiny}{\fontsize{12}{14}\selectfont}
  \newcommand{\scriptsize}{\fontsize{14.4}{16.8}\selectfont}
  \newcommand{\footnotesize}{\fontsize{19}{22.167}\selectfont}
  \newcommand{\small}{\fontsize{22}{25.667}\selectfont}
  \renewcommand{\normalsize}{\fontsize{24}{28}\selectfont}
  \newcommand{\large}{\fontsize{32}{37.333}\selectfont}
  \newcommand{\Large}{\fontsize{40}{46.667}\selectfont}
  \newcommand{\LARGE}{\fontsize{43}{50.167}\selectfont}
  \newcommand{\huge}{\fontsize{51.6}{60.7}\selectfont}
  \newcommand{\Huge}{\fontsize{62}{72.333}\selectfont}
  \newcommand{\veryHuge}{\fontsize{72}{90}\selectfont}
  \newcommand{\VeryHuge}{\fontsize{89.16}{112}\selectfont}
  \newcommand{\VERYHuge}{\fontsize{107}{134}\selectfont}
  \newcommand{\titlefont}{\fontsize{100}{106}\selectfont}
  \newcommand{\makesecfont}{\fontsize{36}{38}\fontseries{b}\selectfont}
  \newcommand{\secfont}{\fontsize{54}{60}\selectfont}
  \newcommand{\subsecfont}{\fontsize{36}{42}\selectfont}
  \newcommand{\paragraphfont}{\fontsize{24}{28}\fontseries{b}\selectfont}
  \newcommand{\authorfont}{\fontsize{50}{54}\selectfont}
  \renewcommand\Affilfont{\fontsize{28}{32}\selectfont\color{white}}
}

\DeclareOption{b0paper}{
  \ifportrait
  \geometry{b0paper,margin=19.03mm,includeheadfoot,portrait,nomarginpar}
  \else
  \geometry{b0paper,margin=19.03mm,includeheadfoot,landscape,nomarginpar}
  \fi
  \setlength{\myskip}{19.03mm}
  \setlength{\logoheight}{47.57mm}

  \newcommand{\tiny}{\fontsize{14.271}{16.649}\selectfont}
  \newcommand{\scriptsize}{\fontsize{17.125}{20}\selectfont}
  \newcommand{\footnotesize}{\fontsize{22.6}{26.4}\selectfont}
  \newcommand{\small}{\fontsize{26.2}{30.5}\selectfont}
  \renewcommand{\normalsize}{\fontsize{28.5}{33.3}\selectfont}
  \newcommand{\large}{\fontsize{38}{44.4}\selectfont}
  \newcommand{\Large}{\fontsize{47.6}{55.5}\selectfont}
  \newcommand{\LARGE}{\fontsize{51.1}{59.7}\selectfont}
  \newcommand{\huge}{\fontsize{61.4}{72.2}\selectfont}
  \newcommand{\Huge}{\fontsize{73.7}{86.1}\selectfont}
  \newcommand{\veryHuge}{\fontsize{85.6}{107}\selectfont}
  \newcommand{\VeryHuge}{\fontsize{106}{133.2}\selectfont}
  \newcommand{\VERYHuge}{\fontsize{127.25}{159.4}\selectfont}
  \newcommand{\titlefont}{\fontsize{119}{126}\selectfont}
  \newcommand{\makesecfont}{\fontsize{42.8}{45.2}\fontseries{b}\selectfont}
  \newcommand{\secfont}{\fontsize{64.2}{71.4}\selectfont}
  \newcommand{\subsecfont}{\fontsize{42.8}{50}\selectfont}
  \newcommand{\paragraphfont}{\fontsize{28.5}{33.3}\fontseries{b}\selectfont}
  \newcommand{\authorfont}{\fontsize{59.5}{64.2}\selectfont}
  \renewcommand\Affilfont{\fontsize{33.3}{38}\selectfont\color{white}}
}

\DeclareOption{a1paper}{
  \ifportrait
  \geometry{a1paper,margin=11.31mm,includeheadfoot,portrait}
  \else
  \geometry{a1paper,margin=11.31mm,includeheadfoot,landscape}
  \fi
  \setlength{\myskip}{11.31mm}
  \setlength{\logoheight}{28.28mm}
}
\DeclareOption{a2paper}{
  \ifportrait
  \geometry{a2paper,margin=8mm,includeheadfoot,portrait}
  \else
  \geometry{a2paper,margin=8mm,includeheadfoot,landscape}
  \fi
  \setlength{\myskip}{8mm}
  \setlength{\logoheight}{20mm}
}

\DeclareOption{a3paper}{
  \ifportrait
  \geometry{a3paper,margin=5.66mm,includeheadfoot,portrait}
  \else
  \geometry{a3paper,margin=5.66mm,includeheadfoot,landscape}
  \fi
  \setlength{\myskip}{5.66mm}
  \setlength{\logoheight}{14.14mm}

  \newcommand{\authorfont}{\fontsize    {23.326}{25.192}\selectfont}
  \renewcommand\Affilfont{\fontsize     {13.062}{14.929}\selectfont\color{white}}
  \newcommand{\tiny}{\fontsize          {5.598 }{6.531 }\selectfont}
  \newcommand{\scriptsize}{\fontsize    {6.718 }{7.837 }\selectfont}
  \newcommand{\footnotesize}{\fontsize  {8.864 }{10.341}\selectfont}
  \newcommand{\small}{\fontsize         {10.263}{11.974}\selectfont}
  \renewcommand{\normalsize}{\fontsize  {11.196}{13.062}\selectfont}
  \newcommand{\large}{\fontsize         {14.929}{17.416}\selectfont}
  \newcommand{\Large}{\fontsize         {18.661}{21.771}\selectfont}
  \newcommand{\LARGE}{\fontsize         {20.060}{23.404}\selectfont}
  \newcommand{\huge}{\fontsize          {24.072}{28.318}\selectfont}
  \newcommand{\Huge}{\fontsize          {28.924}{33.745}\selectfont}
  \newcommand{\veryHuge}{\fontsize      {33.589}{41.986}\selectfont}
  \newcommand{\VeryHuge}{\fontsize      {41.595}{52.250}\selectfont}
  \newcommand{\VERYHuge}{\fontsize      {49.917}{62.513}\selectfont}
  \newcommand{\titlefont}{\fontsize     {46.652}{49.451}\selectfont}
  \newcommand{\makesecfont}{\fontsize   {16.795}{17.728}\fontseries{b}\selectfont}
  \newcommand{\secfont}{\fontsize       {25.192}{27.991}\selectfont}
  \newcommand{\subsecfont}{\fontsize    {16.795}{19.594}\selectfont}
  \newcommand{\paragraphfont}{\fontsize {11.196}{13.062}\fontseries{b}\selectfont}

}
\newif\iftone\tonetrue
\DeclareOption{noT1}{\tonefalse}


\tikzset{grid lines/.style={draw=none, ultra thin, step=\textwidth}}
\DeclareOption{grid}{%
  \tikzset{grid lines/.style={gray, ultra thin, step=.02\textwidth}}%
}
\DeclareOption{coarsegrid}{%
  \tikzset{grid lines/.style={gray, ultra thin, step=.05\textwidth}}%
}
\DeclareOption{finegrid}{%
  \tikzset{grid lines/.style={gray, ultra thin, step=.01\textwidth}}%
}

\ProcessKeyvalOptions*
\ifthenelse{\lengthtest{\grid@GridWidth > 0pt}}{
  \tikzset{grid lines/.style={gray, ultra thin, step=\grid@GridWidth}}%
}

\ifthenelse{\lengthtest{\grid@NoGridLines pt > 0pt}}{
		\tikzset{grid lines/.style={gray, ultra thin, step=1/\grid@NoGridLines*\textwidth}}%
}

\DeclareOption*{\PackageWarning{mpi2015_poster}{Unknown Option \CurrentOption}}
\ExecuteOptions{portrait,final}
\ProcessOptions\relax

\iftone\RequirePackage[T1]{fontenc}\fi
\ifsfmath\RequirePackage{sfmath}\fi

\definecolor{MPIblue}{RGB}{51,165,195}
\colorlet{mpiblue}{MPIblue}
\definecolor{MPIgrey}{RGB}{135,135,141}
\colorlet{mpigrey}{MPIgrey}
\definecolor{MPIgreen}{RGB}{0,118,117}
\colorlet{mpigreen}{MPIgreen}
\definecolor{MPIred}{RGB}{120,0,75}
\colorlet{mpired}{MPIred}
\definecolor{MPIsand}{RGB}{236,233,212}
\colorlet{mpisand}{MPIsand}
\definecolor{MPItext}{RGB}{56,60,60}
\colorlet{mpitext}{MPItext}
\definecolor{MPIbluetext}{RGB}{23,161,193}
\colorlet{mpibluetext}{MPIbluetext}
\definecolor{MPIbackground}{RGB}{239,238,227}
\definecolor{mardiorange}{HTML}{D0662B}
\definecolor{mardiblue}{HTML}{005EAA}

\definecolor{IMPRSorange}{RGB}{239,127,26}
\colorlet{imprsorange}{IMPRSorange}
\definecolor{IMPRSred}{RGB}{174,27,33}
\colorlet{imprsred}{IMPRSred}

\colorlet{blockcolor}{%
  \ifimprs%
  IMPRSorange%
  \else%
  mardiblue%
  \fi%
}
\colorlet{sectioncolor}{%
  \ifimprs%
  IMPRSred%
  \else%
  MPIgrey%
  \fi%
}

\setlength\smallskipamount{6pt plus 2pt minus 2pt}
\setlength\medskipamount{12pt plus 4pt minus 4pt}
\setlength\bigskipamount{24pt plus 8pt minus 8pt}

\setlength\abovecaptionskip{25pt}
\setlength\belowcaptionskip{0pt}
\setlength\abovedisplayskip{25pt plus 6pt minus 15 pt}
\setlength\abovedisplayshortskip{0pt plus 6pt}
\setlength\belowdisplayshortskip{13pt plus 7pt minus 6pt}
\setlength\belowdisplayskip\abovedisplayskip

\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
\setlength{\footskip}{0pt}
\setlength{\parindent}{0pt}
\setlength{\parskip}{.5\baselineskip}
\normalsize

% make sure that minipages inherit the correct parskip amount
\newcommand{\@minipagerestore}{\setlength{\parskip}{.5\baselineskip}}

\newlength{\contentheight}\setlength{\contentheight}{\textheight}
\AtBeginDocument{
  \pagestyle{empty}
  \renewcommand\Authsep{, }
  \renewcommand\Authands{, }
  \renewcommand\Authand{, }
  \setlength{\affilsep}{.5\myskip}
}

% \AtEndDocument{%
% }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  poster
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{poster}
{%
  \newdimen\myheadheight%
  \setbox0=\vbox{\maketitle}%
  \myheadheight=\ht0 \advance\myheadheight by \dp0%
  \addtolength{\contentheight}{-\myheadheight}%
  \begin{tikzpicture}[remember picture]
    \node[inner sep=0pt,outer sep=0pt] (head) {%
      \begin{minipage}[t]{1.0\linewidth}
        \copy0 % use the vbox above
      \end{minipage}};% for node (head)
    \coordinate[below=.5\contentheight] (content_center) at (head.south); 
    \node[outer sep=0pt,% 
          inner sep=0pt,%
          fill=MPIbackground,%
          ] (content) at (content_center){%
      \begin{minipage}[t][\contentheight][t]{1.0\textwidth}%
        \hskip.5\myskip%~
      \end{minipage}};% for node (content)
    \node[fit=(head) (content),
          inner sep=0pt,
          outer sep=0pt] (frame) {};%
    \node[outer sep=0pt,% 
          inner sep=0pt,%
          text=MPItext] (real_content) at (content_center) \bgroup%
      \begin{minipage}[t][\contentheight][t]{1.0\textwidth}%
        \hskip.5\myskip%
}{%    
        \hskip.5\myskip%
      \end{minipage} \egroup;%
    % make sure the grid fits inside the (frame) and draw the grid lines
    \coordinate[below right=1pt] (g1) at (frame.north west);%
    \coordinate[above left=1pt] (g2) at (frame.south east);%
    \draw[grid lines] (g1) grid (g2);%
  \end{tikzpicture}%
  \vskip-\textheight%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                pcolumn                                    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\columnfrac}{0}
\ifcase\thenumcols\relax
\or
  \renewcommand{\columnfrac}{1}
\or
  \renewcommand{\columnfrac}{.5}
\or
  \renewcommand{\columnfrac}{.333}
\fi
\newlength{\colwidth}
\setlength{\colwidth}{\textwidth}%
\addtolength{\colwidth}{-\myskip}
\addtolength{\colwidth}{-\thenumcols\myskip}
\setlength{\colwidth}{\columnfrac\colwidth}%
\newlength{\colcontwidth}
\setlength{\colcontwidth}{\colwidth}%
\addtolength{\colcontwidth}{-\myskip}%

\newenvironment{pcolumn}
{\hskip.3\myskip\begin{minipage}[t]{\colwidth}\setlength{\parskip}{0pt}}
{\end{minipage}\hskip.7\myskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                pbox  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\tikzstyle{pbox}=[inner xsep=.5\myskip,%
                  fill=white,%
                  text=MPItext]
\newenvironment{pbox}[1][]{%
  \tikz\node[pbox] \bgroup%
    \ifblank{#1}{%
      \begin{minipage}{\colcontwidth}%
        \setlength{\parskip}{.5\myskip}%
        \color{MPItext}%
    }{%
      \begin{minipage}[c][#1][c]{\colcontwidth}%
        \setlength{\parskip}{.5\myskip}%
    }%
  }{%
    \par\vspace{.5\myskip}\end{minipage}\egroup;\par%
  }%

\newenvironment{namedpbox}[2][]{%
  \tikz[remember picture]\node[pbox] (#2) \bgroup%
    \ifblank{#1}{%
      \begin{minipage}{\colcontwidth}%
        \setlength{\parskip}{.5\myskip}%
        \color{MPItext}%
    }{%
      \begin{minipage}[c][#1][c]{\colcontwidth}%
        \setlength{\parskip}{.5\myskip}%
    }%
  }{%
    \par\vspace{.5\myskip}\end{minipage}\egroup;\par%
  }%

\tikzstyle{secbox} = [minimum height=1.25\myskip,%
                      fill=blockcolor,%
                      text=white,%
                      inner xsep=.5\myskip,%
                      inner ysep=.25em,%
                      font=\makesecfont]
\newenvironment{secbox}%
               {\tikz\node[secbox]\bgroup\begin{minipage}{\colcontwidth}}%
               {\end{minipage}\egroup;\par}% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                more commands for the poster header            
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\uselogos}{\phantom{.}}
\newcommand{\partnerlogos}[1]{\renewcommand{\uselogos}{#1}}

\newcommand{\bmbf}{
  \ifenglish
  \includegraphics[height=\logoheight]{DEgov-BMBF-Logo_en}%
  \else%
  \includegraphics[height=\logoheight]{DEgov-BMBF-Logo}%
  \fi%
}

\newcommand{\bmwi}{
  \ifenglish
  \includegraphics[height=\logoheight]{DEgov-BMWi-Logo_en}%
  \else%
  \includegraphics[height=\logoheight]{DEgov-BMWi-Logo}%
  \fi%
}

\newcommand{\dfg}{
  \raisebox{.2\logoheight}{\includegraphics[height=.6\logoheight]{dfg_logo_blau_4c}}%
}

\newcommand{\dfgwtext}{
  \raisebox{.2\logoheight}{\includegraphics[height=.6\logoheight]{dfg_logo_schriftzug_blau_4c}}%
}

\newcommand{\daad}{
  \raisebox{.2\logoheight}{\includegraphics[height=.6\logoheight]{daad_logo_blue_cmyk}}%
}

\newcommand{\ovgu}{
  \includegraphics[height=\logoheight]{poster_ovgulogo}
}

\newcommand{\imprs}[1][classic]{
  \ifthenelse{\equal{#1}{classic}}{%classic logo
    \includegraphics[height=\logoheight]{ProEng_logo2}
  }{}
  \ifthenelse{\equal{#1}{2020}}{%classic logo
    \includegraphics[height=\logoheight]{IMPRS_ProEng_Logo_2020}
  }{}
}

\ifimprs%
\partnerlogos{\imprs}%
\fi%


\newcommand{\useseparator}{%
  \hspace{.375\myskip}%
  \includegraphics[height=\logoheight]{logos/MPI/poster_Separator}%
  \hspace{.375\myskip}%
}%

\newcommand{\insertgrouplogos}{%
  \ifarb%
  \useseparator
  \ifenglish%
  \includegraphics[height=\logoheight]{poster_ARB_en_MPI_Magdeburg_Logo}%
  \else%
  \includegraphics[height=\logoheight]{poster_ARB_de_MPI_Magdeburg_Logo}%
  \fi%
  \fi%
  \ifbpe%
  \hspace{\myskip}%
  \useseparator%
  \hspace{\myskip}%
  \ifenglish%
  \includegraphics[height=\logoheight]{poster_BPE_en_MPI_Magdeburg_Logo}%
  \else%
  \includegraphics[height=\logoheight]{poster_BPE_de_MPI_Magdeburg_Logo}%
  \fi%
  \fi%
  \ifcsc%
  \useseparator%
  \ifenglish%
  \includegraphics[height=\logoheight]{logos/groups/poster_CSC_en_MPI_Magdeburg_Logo}%
  \else%
  \includegraphics[height=\logoheight]{logos/groups/poster_CSC_de_MPI_Magdeburg_Logo}%
  \fi%
  \fi%
  \ifdri%
  \useseparator%
  \ifenglish%
  \includegraphics[height=\logoheight]{poster_DRI_en_MPI_Magdeburg_Logo}%
  \else%
  \includegraphics[height=\logoheight]{poster_DRI_de_MPI_Magdeburg_Logo}%
  \fi%
  \fi%
  \ifehc% EHC is english only
  \useseparator%
  \includegraphics[height=\logoheight]{poster_EHC_en_MPI_Magdeburg_Logo}%
  \fi%
  \ifmsd%
  \useseparator%
  \ifenglish%
  \includegraphics[height=\logoheight]{poster_MSD_en_MPI_Magdeburg_Logo}%
  \else%
  \includegraphics[height=\logoheight]{poster_MSD_de_MPI_Magdeburg_Logo}%
  \fi%
  \fi%
  \ifnds%
  \useseparator%
  \ifenglish%
  \includegraphics[height=\logoheight]{poster_NDS_en_MPI_Magdeburg_Logo}%
  \else%
  \includegraphics[height=\logoheight]{poster_NDS_de_MPI_Magdeburg_Logo}%
  \fi%
  \fi%
  \ifpcf%
  \useseparator%
  \ifenglish%
  \includegraphics[height=\logoheight]{poster_PCF_en_MPI_Magdeburg_Logo}%
  \else%
  \includegraphics[height=\logoheight]{poster_PCF_de_MPI_Magdeburg_Logo}%
  \fi%
  \fi%
  \ifpsd%
  \useseparator%
  \ifenglish%
  \includegraphics[height=\logoheight]{poster_PSD_en_MPI_Magdeburg_Logo}%
  \else%
  \includegraphics[height=\logoheight]{poster_PSD_de_MPI_Magdeburg_Logo}%
  \fi%
  \fi%
  \ifpse%
  \useseparator%
  \ifenglish%
  \includegraphics[height=\logoheight]{poster_PSE_en_MPI_Magdeburg_Logo}%
  \else%
  \includegraphics[height=\logoheight]{poster_PSE_de_MPI_Magdeburg_Logo}%
  \fi%
  \fi%
  \ifsct%
  \useseparator%
  \ifenglish%
  \includegraphics[height=\logoheight]{poster_SCT_en_MPI_Magdeburg_Logo}%
  \else%
  \includegraphics[height=\logoheight]{poster_SCT_de_MPI_Magdeburg_Logo}%
  \fi%
  \fi%
  \ifimprs%
  \useseparator%
  \ovgu%
  \fi%
}

\newlength{\titlewidth}%
\setlength{\titlewidth}{\textwidth}%
\addtolength{\titlewidth}{-2.0\myskip}%

\renewcommand{\maketitle}
{%
  \tikz[remember picture]%
  \node[inner xsep=\myskip,inner ysep=0pt,outer sep=0pt,fill=white,align=left](logos){%
      \begin{minipage}[c]{1.0\titlewidth}%
        \includegraphics[height=\logoheight]{logos/MPI/poster_Minerva}%
        \useseparator%
        \ifenglish%
          \includegraphics[height=\logoheight]{logos/MPI/poster_MPI_Magdeburg_Logo_en}%
        \else%
          \includegraphics[height=\logoheight]{logos/MPI/poster_MPI_Magdeburg_Logo_de}%
        \fi%
        \insertgrouplogos{}%
        \hfill\uselogos{}\vspace{\myskip}%
       \end{minipage}%
     };
     
     \tikz[remember picture]%
       \node[inner sep=\myskip,outer sep=0pt,fill=blockcolor,text=white](title){%
      \begin{minipage}[c]{1.0\titlewidth}
        {\titlefont \@title\\\vspace{-.75em} \par}% \par applies font size to entire line; see, e.g., https://tex.stackexchange.com/questions/84321/help-with-adjusting-line-spacing-on-custom-title-page
        {\authorfont \@author}%
      \end{minipage}
    };
}

\newcommand{\makesection}[1]
{\vspace{\myskip}\begin{secbox}#1\vphantom{g}\end{secbox}\vspace{.25\myskip}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                      block
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{block}[1]%
{\makesection{#1}\begin{pbox}}
{\end{pbox}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                      Sectioning commands 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\section}[1]{{\color{sectioncolor} \secfont #1}\par}
\newcommand{\subsection}[1]{{\color{sectioncolor} \subsecfont #1}\par}

\newcommand{\paragraph}[1]{\par{\color{sectioncolor} \paragraphfont #1}}
\newcommand{\subsubsection}[1]{{\color{sectioncolor} \paragraphfont #1}\par}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% and a lot of standard settings basically copied from the article.cls
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\setlength\parsep    {.5\myskip}
\setlength\leftmargini  {2em}
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {.5em}
\setlength\leftmarginvi {.5em}
\setlength  \labelsep  {.5em}
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

\ifenglish
  \newcommand\figurename{Figure}%
  \newcommand\tablename{Table}%
\else
  \newcommand\figurename{Abbildung}%
  \newcommand\tablename{Tabelle}%
\fi

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{10\p@}
\setlength\arrayrulewidth{2\p@}
\setlength\doublerulesep{10\p@}
\setlength\tabbingsep{\labelsep}
\renewcommand{\arraystretch}{1.2}
\def\thepage{}
\newcounter{figure}
\renewcommand \thefigure {\color{MPItext}\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\color{MPItext}\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\color{MPItext}\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}

\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\newenvironment{thebibliography}[1]
     {%\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \vskip.5\myskip\color{MPItext}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\bibliographystyle{siamplain}
\endinput

%% 
%% End of file 'mpi2015_poster.cls'.
%%
