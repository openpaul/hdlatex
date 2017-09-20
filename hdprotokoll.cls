\def\fileversion{0.1}
\def\filedate{2015/08/26}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hdprotokoll}
 [\filedate\space\fileversion\space 
   Paul Saary HD Latex class]

% % % % % % % % % % % % % % % % % % % % % % % % %
\LoadClass{scrartcl} %scrartcl scrreprt
\RequirePackage[utf8]{inputenc}


% % % % % % % % % % % % % % % % % % % % % % % % %
% paper
\RequirePackage{geometry}
\geometry{top=25mm,
    	bottom=35mm,
    	inner=25mm,
    	outer=25mm, 
    	nomarginpar,
	   	bindingoffset=12.5mm,
    	%includefoot,    	
    	%showframe% <- only to show the page layout
    }
   
% make header and footer correct
\RequirePackage[automark]{scrlayer-scrpage}
\pagestyle{scrheadings}
\clearpairofpagestyles
\ihead{\headmark}
\ofoot{\pagemark}
   
% zeilenabstand
%\renewcommand{\baselinestretch}{1.5}
\usepackage{setspace}
\setstretch{1.5}


% % % % % % % % % % % % % % % % % % % % % % % % %
% fonts
% caption
\setkomafont{captionlabel}{%
	\sffamily\bfseries
}
\setkomafont{caption}{%
	\sffamily
}

% fuß und kopfzeile
\setkomafont{pagenumber}{%
	\small\sffamily
}
\setkomafont{pageheadfoot}{%
	\small\sffamily
}

% sections
\setkomafont{section}{%
	\LARGE\normalfont\sffamily
}
\setkomafont{subsection}{%
	\normalfont\sffamily
}
\setkomafont{subsubsection}{%
	\bfseries\sffamily
}


%TOC
\setkomafont{disposition}{%
	\bfseries\sffamily
}



% % % % % % % % % % % % % % % % % % % % % % % % %
% make title page
\def\titleheader#1{\gdef\@titleheader{#1}}
\def\@titleheader{\@latex@warning@no@line{No \noexpand\titleheader given}}

\def\protokolltype#1{\gdef\@protokolltype{#1}}
\def\@protokolltype{\@latex@warning@no@line{No \noexpand\protokolltype given}}

\def\supervisor#1{\gdef\@supervisor{#1}}
\def\@supervisor{\@latex@warning@no@line{No \noexpand\supervisor given}}


\def\institute#1{\gdef\@institute{#1}}
\def\@institute{\@latex@warning@no@line{No \noexpand\institute given}}

\def\group#1{\gdef\@group{#1}}
\def\@group{\@latex@warning@no@line{No \noexpand\group given}}

\def\dateStart#1{\gdef\@dateStart{#1}}
\def\@dateStart{\@latex@warning@no@line{No \noexpand\dateStart given}}

\def\dateEnd#1{\gdef\@dateEnd{#1}}
\def\@dateEnd{\@latex@warning@no@line{No \noexpand\dateEnd given}}




\renewcommand*{\maketitle}{%

% remove intent
\setlength{\parindent}{0pt}

\begin{titlepage}


\begin{center}

\vfill
\centering
\@titleheader

\vfill

\Huge\textbf{\@title}

\Large \textbf{\@protokolltype}

\@supervisor

\vfill
\vfill

\normalsize
\@author

Abgegeben am~\@date


\end{center}

\end{titlepage}



\cleardoublepage
\pagenumbering{roman}
%\setcounter{page}{-1}%



Die vorliegende Arbeit wurde \@institute\ in der Zeit von \mbox{\@dateStart}\ bis \mbox{\@dateEnd}\ angefertigt.

\ifx\nolocation\undfined

\vspace{4em}
\begin{tabular}{ll}
\makebox[2.5in]{\hrulefill} & \makebox[2.5in]{\hrulefill}\\
{Ort, Datum} & {Unterschrift (Betreuer)}\\% adds space between the two sets of signatures
\end{tabular}

\vspace{4em}
\fi
\section*{Eigenständigkeitserklärung}

Ich erkläre hiermit ehrenwörtlich, dass ich die vorliegende Arbeit selbstständig angefertigt habe. Sämtliche aus fremden Quellen direkt oder indirekt übernommenen Gedanken sind als solche kenntlich gemacht. Die Arbeit wurde keiner anderen Prüfungsbehörde vorgelegt und noch nicht veröffentlicht

\vspace{4em}
\begin{tabular}{ll}
\makebox[2.5in]{\hrulefill} & \makebox[2.5in]{\hrulefill}\\
Ort, Datum & Unterschrift\\% adds space between the two sets of signatures
\end{tabular}



\setlength{\parindent}{8pt}
\cleardoublepage


}