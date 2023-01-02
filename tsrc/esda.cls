\LoadClass[10pt,twoside,a4paper]{article}
\NeedsTeXFormat{LaTeX2e}

\RequirePackage{graphicx}
\RequirePackage{helvet}
\RequirePackage{fancyhdr}
%\RequirePackage{fancyvrb}
%\RequirePackage[includehead,includefoot,top=50pt,bottom=50pt,headheight=20pt,margin=1in]{geometry}
\RequirePackage[includefoot, lmargin=2.5cm, rmargin=2.5cm, tmargin=2.5cm, bmargin=2.5cm]{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{multirow}
\RequirePackage{verbatim}
\RequirePackage{geometry}
\RequirePackage{bm}
\RequirePackage{tabularx}
\RequirePackage{lipsum}
\RequirePackage{catchfile}
\RequirePackage[all]{nowidow}
\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage{longtable}
% References in numbered list [1],[2],...:
\RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{float}
\RequirePackage{color, colortbl}
\RequirePackage[section]{placeins}
\RequirePackage{mathtools}
\RequirePackage{amsthm}
\RequirePackage[OT1]{fontenc} 
\RequirePackage{array}
\RequirePackage[binary-units=true]{siunitx}
\RequirePackage[all]{nowidow}
\RequirePackage{lscape}

\widowpenalty10000
\clubpenalty10000

\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}}

\geometry{
 a4paper,
 total={170mm,257mm},
 %left=20mm,
 %top=15mm,
 margin=2.5cm,
}

\pagestyle{fancy}
\graphicspath{ {./figures} }
\setlength{\parskip}{\baselineskip}


\renewcommand{\headrulewidth}{0pt}
\fancyhead{}
\fancyhead[CO,CE]{\textbf{\@header}}
%\fancyhead[RE,LO]{\textsc{\small{\@category}}}

\renewcommand{\footruleskip}{10pt}
\renewcommand{\footrulewidth}{.0pt}

\fancyfoot{}
\fancyfoot[CE,CO]{\thepage}

\newcommand{\category}[1]{\def\@category{#1}}
\newcommand{\header}[1]{\def\@header{#1}}

\renewcommand{\familydefault}{\sfdefault}

\newcommand{\getenv}[2][]{%
  \CatchFileEdef{\temp}{"|kpsewhich --var-value #2"}{\endlinechar=-1}%
  \if\relax\detokenize{#1}\relax\temp\else\let#1\temp\fi}

\graphicspath{ {./figures/} }

