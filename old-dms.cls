
%        .d88888b.  888      888 
%       d88P" "Y88b 888      888 
%       888     888 888      888 
%       888     888 888  .d88888 
%       888     888 888 d88" 888 
%       888     888 888 888  888 
%       Y88b. .d88P 888 Y88b 888 
%        "Y88888P"  888  "Y88888 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{old-dms}[v0  class for assignments with a vintage look]

%                    8888888b.  888b     d888         
%                    888  "Y88b 8888b   d8888         
%                    888    888 88888b.d88888         
%                    888    888 888Y88888P888 .d8888b  
%                    888    888 888 Y888P 888 88K      
%                    888    888 888  Y8P  888 "Y8888b. 
%                    888  .d88P 888   "   888      X88 
%                    8888888P"  888       888  88888P' 
  
\LoadClassWithOptions{article}

%   OLd DMs is a LaTeX class which simplifies the workflow
%   for quick assignments while providing a vintage look.
%
%   It is based on the article class, so it keeps all the
%   features while giving shortcuts for commands that are
%   repeatedly used in an assignment-type work.


%=======================================%
%       LAYOUT AND SHORTCUTS            %
%=======================================%

%	Basic stuff

\usepackage[T1]{fontenc}

%	Raccourcis sympa

\newenvironment{ul}	% instead of begin{itemize}
{\begin{itemize}}
{\end{itemize}}

\newenvironment{ol}
{\begin{enumerate}}
{\end{enumerate}}

\newcommand{\p}[1]{\paragraph{#1}}

%   Colors

\usepackage[table]{xcolor}


%	Tables

\usepackage{tabularx}		% tables with adaptive columns

\newcolumntype{Y}{>{\centering\arraybackslash}X} % tabularx column type

\usepackage{booktabs}		% cleaner tables

%	Pictures and advanced layout

\usepackage{graphicx}		% for pictures

\usepackage{multicol}		% for multicolumn sections especially toc

\usepackage{fancyhdr}		% custom headers and footers

\usepackage[labelsep = endash, size = small]{caption} %custom captions

%	Other

\usepackage{numprint}	% to display large numbers in a clean way

%	Biblio

\usepackage[super,square]{natbib} % for custom bibliography references

%	m a t h

\usepackage{amsfonts}	% fonts
\usepackage{mathrsfs}	
\usepackage{amsmath}

\renewcommand{\phi}{\varphi}	
\renewcommand{\epsilon}{\varepsilon}	% i find it more pleasing

\newcommand{\N}{\mathbb{N}}     % shortcuts for usual number sets
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}

\usepackage{empheq}		% to have numbered equations in arrays

% vectors with a space before
\let\oldvec\vec
\renewcommand{\vec}{\:\oldvec}

%            dP                         oo                   
%            88                                              
%   88d888b. 88d888b. dP    dP .d8888b. dP .d8888b. .d8888b. 
%   88'  `88 88'  `88 88    88 Y8ooooo. 88 88'  `"" Y8ooooo. 
%   88.  .88 88    88 88.  .88       88 88 88.  ...       88 
%   88Y888P' dP    dP `8888P88 `88888P' dP `88888P' `88888P' 
%   88                     .88                               
%   dP                 d8888P  

\usepackage[squaren, Gray, cdot]{SIunits} % units

\newcommand{\ee}[1]{\cdot 10^{#1}} 	% powers of 10

\newcommand{\vect}[1]{\:\overrightarrow{#1}} % new vect with overrightarrow style

\usepackage{physics}    % best package on earth

%	Micro-typesetting

\usepackage{microtype}
\UseMicrotypeSet[kerning]{allmath}
\SetExtraKerning{encoding={OMS,OML,U}, family={mdbch}}{p={1000,}}

%	Hyperlinks in PDFs

\usepackage[hidelinks]{hyperref}


%=======================================%
%      STYLE: FONTS AND HEADERS         %
%=======================================%

%	Fonts definitions : see https://tex.stackexchange.com/questions/9894/old-style-antique-typesetting-in-latex-tex

\usepackage{mathspec} % https://ctan.org/pkg/mathspec
    \defaultfontfeatures{Mapping=tex-text}
    \setmainfont{Old Standard TT}
    \setmathsfont(Greek)[Uppercase=Plain,Lowercase=Regular]{GFS Solomos}
    \setmathsfont(Latin)[Uppercase=Italic,Lowercase=Italic]{Old Standard TT}
    % download GFS's fonts from http://www.greekfontsociety.gr/

\newfontfamily{\bask}{GFS Baskerville}
\let\sum\relax
\DeclareMathOperator*{\sum}{\raisebox{-3.5pt}{\scalebox{2}{\rotatebox{1}{{\bask Σ}}}}} % all these lines to define this extreme summation sign

\newfontfamily{\tgp}{TeX Gyre Pagella Math}
\let\partial\oldpartial
\newcommand{\partial}{\text{{\tgp ∂}}} % these three lines go for the weird \partial symbol

%	two-column TOC

\setlength{\columnsep}{20pt}
\setlength{\columnseprule}{0.4pt}

\newcommand*{\multicolumntoc}{2}
\newcommand\beautifultableofcontents{%
    \begin{multicols}{\multicolumntoc}[\section*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}]%
    \@starttoc{toc}%
    \end{multicols}%
    }

\let\TOC\beautifultableofcontents
\renewcommand{\tableofcontents}{
\TOC
}

%	Centered sections

\usepackage{titlesec}
\titleformat{\section}{\centering\Large\bfseries\filcenter}{\thesection}{1em}{}


%=======================================%
%      CODE                             %
%=======================================%

\usepackage{verbatim}   % for verbatim environments

\usepackage{minted} % for color highlighting
\usemintedstyle{friendly}

\usepackage{mdframed} % for custom code boxes

\mdfdefinestyle{code_box}{%
    topline,
    bottomline,
	linewidth=.4pt,
	leftline=false,
	rightline=false,
	innerleftmargin=35pt,
}

\mdfdefinestyle{code_box_nonos}{%
    topline,
    bottomline,
	linewidth=.4pt,
	leftline=false,
	rightline=false,
	innerleftmargin=6pt,
}

\renewcommand{\theFancyVerbLine}{
	\scriptsize
	\textcolor{black}{
		\texttt
		\oldstylenums{}
		\arabic{FancyVerbLine}
	}
}

%	Macro environments

\newenvironment{codebox}[1]{%
\VerbatimEnvironment
\begin{mdframed}[style = code_box]%
\begin{minted}[
	breaklines,
	fontsize=\small,
	linenos,
	tabsize=2,
]{#1}%
}{%
\end{minted}%
\end{mdframed}%
}

\newenvironment{codeboxnonos}[1]{%
\VerbatimEnvironment
\begin{mdframed}[style = code_box_nonos]%
\begin{minted}[
	breaklines,
	fontsize=\small,
	tabsize=2,
]{#1}%
}{%
\end{minted}%
\end{mdframed}%
}

%   Inline code

\newcommand{\inlinecode}[1]{\mintinline[ fontsize=\small]{#1}}


%=======================================%
%       DOCUMENT CONFIGURATION          %
%=======================================%

\usepackage{parskip}

\renewcommand{\headrulewidth}{0pt}
\pagestyle{fancyplain} %header
\fancyhf{} % sets both header and footer to nothing
\fancyfoot[LE,RO]{\thepage}


%=======================================%
%       CUSTOM MACROS                   %
%=======================================%

%   Questions

\newcounter{question}
\newcommand{\q}{
\setcounter{subquestion}{1}
\paragraph{\thequestion /}
\refstepcounter{question}
}

\newcounter{subquestion}
\newcommand{\sq}{
(\alph{subquestion})
\refstepcounter{subquestion}
}

\setcounter{question}{1}

\renewcommand{\t}{\vskip15pt}

% Figures shortcuts

\usepackage{subcaption}

\newcommand{\fig}[4]
{
\begin{figure}[ht!]
    \centering
    \ifthenelse{\equal{#4}{}}
    {\includegraphics[width=.7\textwidth]{#1}}
    {\includegraphics[width=#4\textwidth]{#1}}%
    \caption{#2}
    \label{#3}
\end{figure}
}

\newcommand{\subfig}[4]
{
\begin{subfigure}{#4\textwidth}
    \centering
    \includegraphics[width=\textwidth]{#1}
    \caption{#2}
    \label{#3}
\end{subfigure}
}

\usepackage{xparse}

\NewDocumentEnvironment{multifig}{mm}
{
    \begin{figure}[ht!]
    \centering
}{
    \caption{#1}
    \label{#2}
    \end{figure}
}


%=======================================%
%       THINGS THAT MUST BE PUT HERE    %
%=======================================%

\renewcommand{\C}{\mathbb{C}} %parce que c'est une redéfinition de commande existante mais dont on s'en balek