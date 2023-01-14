%%
%% This is file `ecsthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ecsdocs.dtx  (with options: `thesis')
%% 
%% Copyright (C) 2001 by Steve R. Gunn
%% 
%% This file is part of the ECSDocs class distribution
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Thesis}
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb          { 1.496in}  % left margin
                        { 0.4in}  % top margin
                        { 1.0in}  % right margin
                        { 1.0in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\usepackage{amsmath,amsfonts,amssymb}
%\usepackage{epstopdf}
%\usepackage{listings}
\usepackage{graphicx}
\usepackage[scriptsize]{subfigure}
\usepackage{multirow}
\usepackage{algorithm}
\usepackage{algorithmic}
\usepackage{url}
%\usepackage{eso-pic}
\usepackage{subfigure}
%Added mnit Water Mark
%\newcommand\watermark{
%\makeatletter
% \AddToShipoutPicture*{%
%            \setlength{\@tempdimb}{.5\paperwidth}%
%            \setlength{\@tempdimc}{.5\paperheight}%
%            \setlength{\unitlength}{1pt}%
%         \put(\strip@pt\@tempdimb,\strip@pt\@tempdimc){%
%      \makebox(180,-350){\rotatebox{45}{\textcolor[gray]{0.75}%
%       {\fontsize{55cm}{55cm}\selectfont{\mnitwmarkname}}}}%
%            }%
%        }
%\makeatother
%}
%% Added Cover page
\newcommand\coverpage{
\makeatletter
\newpage
\null\vfil
   \begin{center}
%      \vskip 30\p@
      \setlength{\parskip}{0pt}
      {\Large\textbf{\textcolor{blue}{\firstmembername}} \vspace{8mm} \par}
      {\vspace{20mm} \par}
      \vfill
      {\huge \bf {\textcolor{blue}\@title  \vspace{4mm}} \par}
      \vfill
      {\LARGE \textbf {\textcolor{blue}\deptname} \par}
      {\LARGE \textbf{\textcolor{blue}{(\sessionname) }} \vspace{5mm} \par}
      {\Large \textbf{\textcolor{blue}{\textsc{\INSname}}} \par}
      {\large \textbf {\textcolor{blue}{\textsc{\PLacename}}}  \par}
      
    \end{center}
 \AddToShipoutPicture*{%
            \setlength{\@tempdimb}{.1\paperwidth - 1.5}%
            \setlength{\@tempdimc}{.1\paperheight }%
            \setlength{\unitlength}{1pt}%
            \put(\strip@pt\@tempdimb,\strip@pt\@tempdimc){%
	\includegraphics[width=\paperwidth ,height=\paperheight,keepaspectratio]{\logoname}%
            }%
        }
\null\vfil
\makeatother
}

\newcommand*{\logo}[1]{\def\logoname{#1}}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\branch}[1]{\def\branchname{#1}}
\newcommand*{\firstmember}[1]{\def\firstmembername{#1}}
\newcommand*{\stid}[1]{\def\stidname{#1}}
\newcommand*{\institute}[1]{\def\insname{#1}}
\newcommand*{\INSTITUTE}[1]{\def\INSname{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\session}[1]{\def\sessionname{#1}}
\newcommand*{\cert}[1]{\def\certname{#1}}
\newcommand*{\place}[1]{\def\placename{#1}}
\newcommand*{\PLace}[1]{\def\PLacename{#1}}
\newcommand*{\pin}[1]{\def\pinname{#1}}
\newcommand*{\wmark}[1]{\def\mnitwmarkname{#1}}
\renewcommand*{\date}[1]{\def\datename{#1}}

\supervisor  {}
\degree      {}
\branch		{}
\session      {}
\institute  {Malaviya National Institute of Technology}
\INSTITUTE  { MALAVIYA NATIONAL INSTITUTE OF TECHNOLOGY}
\department  {Department of Electronics \& Communication Engineering}
\cert	{}
\place {}
\PLace {}
\date {}
\pin {}
\wmark {}
\logo {}
\renewcommand\maketitle{
  \btypeout{Title Page}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
%    \null\vfil
  %  \vskip 30\p@
    \begin{center}
      \setlength{\parskip}{0pt}
     % {\large\textbf{A} \vspace{5mm} \par}
      %{\large\textbf{Ph.D. THESIS} \vspace{2mm} \par}
      \medskip
     % {\large{on} \vspace{-1mm} \par}
%      \medskip
	  \vfill
      {\huge \bf \@title  \vspace{3mm} \par}
      \vspace{20mm}
      {\large\textbf{Ph.D. Thesis} \vspace{2mm} \par}
     % {\Large \textit {submitted for partial fulfillment for the degree of}\par}
     % {\Large \degreename ~in \branchname \vspace{7mm} \par}
%      {(\branchname)  \vspace{3mm} \par}
        \vspace{10mm}
          {\Large\textbf {\firstmembername}}\\
                         \stidname
            \vspace{20mm}

		\includegraphics[scale=0.45]{./logo}
      %{\\ \vspace{3mm}\large{Academic Session}  \vspace{2mm} \par}
    %  {(\sessionname)  \vspace{2mm} \par}
    \end{center}
	
%\begin{tabular}{cc}
   % \begin{minipage}{.6\linewidth}
     %   \begin{tabular}{l}
       %     \textbf {Supervisors:} \\
	%		\supname
       % \end{tabular}
  %  \end{minipage} &

  %  \begin{minipage}{.4\linewidth}
  %      \begin{tabular}{l}
     %       \textbf {Submitted By:} \\
	%		\firstmembername \\
	%		\stidname
     %   \end{tabular}
 %   \end{minipage} 
%\end{tabular}

\vspace {4.3mm}

	
    \par
    \begin{center}
	\Large \deptname \par
\vspace {-1mm}
   %\Large{ \textbf{\INSname, JAIPUR }}  \par
  \Large{ \textbf{MALAVIYA NATIONAL INSTITUTE OF TECHNOLOGY JAIPUR}}\\
   \textbf{June 2018}
    \end{center}
    %\vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\maketitle\relax
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\and\relax
  \clearpage
}
% Added Certificate
\newcommand\makecertificate{
  \thispagestyle{empty}
    \btypeout{Title Page}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
%    \null\vfil
    \vskip 30\p@
    \begin{center}
    
    \begin{center}
    \includegraphics[scale=0.4]{./logo}
    \end{center}

    {\large \deptname \vspace{4mm} \par}
    {\textbf{\insname} , \textbf{\placename} - \textbf{\pinname} \vspace{15mm} \par }
    
      \setlength{\parskip}{0pt}
      {\large \textbf {\textcolor{blue} {Certificate}} \vspace{0mm} \par}
      \medskip
    \end{center}
    
        
      \begin{doublespace}
      {{\certname} \vspace{7mm} \par}
      \end{doublespace}
      
%      \watermark
      
    \begin{center}      
    \begin{tabular}{l c c c c c c c c c c c c c c}
    	& & & & & & & & &  \textbf{(\supname)}  & & \vspace{5mm} \\
    	& & & & & & & & & Associate Professor  & &    \vspace{5mm} \\
    	Place: \placename & & & & & & & & & \deptname  & & \vspace{5mm} \\
    	Date: \datename \dotfill & & & & & & & & & MNIT, \placename  & & \vspace{5mm} \\
    \end{tabular}
    \end{center}    
    \par
    
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\makecertificate\relax
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\and\relax
  \clearpage
}
% end certificate


\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \addtotoc{Abstract }
 % \addtocontents{toc}{\vspace{1em}}  % Add a gap in the Contents, for aesthetics
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\underline{\textbf{\Large{A\large{BSTRACT}}}} \par}
    \medskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \clearpage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\addtotoc{List of Figures}
\btypeout{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\addtotoc{List of Tables}
\btypeout{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listofalgorithms{
\addtotoc{List of Algorithms}
\btypeout{List of Algorithms}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listalgorithmname
      \@mkboth{
          \MakeUppercase\listalgorithmname}{\MakeUppercase\listalgorithmname}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Nomenclature}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \clearpage
}
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
%\renewcommand{\headrulewidth}{0pt}
%\addtotoc{Acknowledgements}
\thispagestyle{empty}
\null\vfil
\vskip 60\p@
\begin{center}{\Large\bf Acknowledgements \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
\clearpage
}
\newcommand\Glossary[1]{
\btypeout{Glossary}
\addtotoc{Glossary}
\thispagestyle{empty}
\null\vfil
%\vskip 10\p@
{\Large\bf Glossary \par}
\bigskip{}
{\normalsize #1}
\vfil\vfil\null
\clearpage
}

\newenvironment{declaration}
{
  \btypeout{Declaration Page}
  %\addtotoc{Declaration }
  %\addtocontents{toc}{\vspace{1em}}  % Add a gap in the Contents, for aesthetics
  \thispagestyle{empty}
 %\renewcommand{\headrulewidth}{0pt}
  %\thispagestyle{fancy}

%\fancyhead{}
%%\fancyfoot{}
%
%\fancyfoot[C]{\thepage}
  \null\vfil
%  \begin{center}
%    \setlength{\parskip}{0pt}
%    {\underline{\textbf{\Large{D\large{ECLARATION}}}} \par}
%    \medskip
%  \end{center}
}
{
  \vskip 20\p@
  Shailendra Kumar Tripathi \\
 (2013REC9547)
  %\rule[1em]{25em}{0.5pt} 
  
  Date:\\
  %\rule[1em]{25em}{0.5pt} 

 % Place: MNIT Jaipur
  \vfil\vfil\vfil\null
  \clearpage
}


\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\clearpage
}
\renewcommand\backmatter{
  \if@openright
    \clearpage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput

%%
%% End of file `ecsthesis.cls'.
