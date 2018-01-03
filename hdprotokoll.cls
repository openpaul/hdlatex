\def\fileversion{0.1.1}
\def\filedate{2017/09/20}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hdprotokoll}
 [\filedate\space\fileversion\space 
   Heidelberg IMPB inofficial Latex class]


% % % % % % % % % % % % % % % % % % % % % % % % %
\LoadClass{scrartcl}
\RequirePackage[utf8]{inputenc}

\newcommand{\hdtrue}{true}
\DeclareOption{thesis}{\newcommand{\hdthesis}{true}}
\DeclareOption{summary}{\newcommand{\hdsummary}{true}}
\DeclareOption{normal}{\newcommand{\hdnormal}{true}}
\DeclareOption{projectproposal}{\newcommand{\hdprojectp}{true}}
\DeclareOption{impberklaerung}{\newcommand{\hderklaerung}{true}}
\ProcessOptions\relax
% % % % % % % % % % % % % % % % % % % % % % % % %
% paper
\RequirePackage{geometry}
\geometry{top=25mm,
    	bottom=25mm,
    	inner=25mm,
    	outer=25mm, 
    	nomarginpar,
	   	bindingoffset=12.5mm,
    	%showframe% <- only to show the page layout
    }
   
% make header and footer correct
\RequirePackage[automark]{scrlayer-scrpage}
\pagestyle{scrheadings}
\clearpairofpagestyles
\ihead{\headmark}
\ofoot{\pagemark}
   
% zeilenabstand
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


%Table of contents
\setkomafont{disposition}{%
	\bfseries\sffamily
}

% % % % % % % % % % % % % % % % % % % % % % % % %
% summary table of content
% neues commando für title und ein TOC
% Title, author, datum, art der veranstaltung
\ifx \hdsummary \hdtrue
\usepackage{tocloft}

\newcommand{\listhdtitlename}{Inhaltsverzeichnis}
\newlistof{hdtitle}{hdtit}{\listhdtitlename}
\newcommand{\hdtitle}[4]{%
    \refstepcounter{hdtitle}
    \vskip17pt
    {\noindent\setstretch{1.1}\section{#1}}
    {\setstretch{1.4}
        \vskip-8pt
        \noindent\textsf{\textit{#2\hfill#3}\\
            \noindent#4}\vskip1em}
    \addcontentsline{hdtit}{hdtitle}
    {\protect\numberline{\thehdtitle}{\textbf{#1}\\\textit{#2\hfill#3}\\#4}}\par}
\fi
% % % % % % % % % % % % % % % % % % % % % % % % %


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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% masterthesis
\def\Aname#1{\gdef\@Aname{#1}}
\def\@Aname{\@latex@warning@no@line{No \noexpand\Aname given}}

\def\Ainstitute#1{\gdef\@Ainstitute{#1}}
\def\@Ainstitute{\@latex@warning@no@line{No \noexpand\Ainstitute given}}

\def\Aabteilung#1{\gdef\@Aabteilung{#1}}
\def\@Aabteilung{\@latex@warning@no@line{No \noexpand\Aabteilung given}}


\def\Bname#1{\gdef\@Bname{#1}}
\def\@Bname{\@latex@warning@no@line{No \noexpand\Bname given}}

\def\Binstitute#1{\gdef\@Binstitute{#1}}
\def\@Binstitute{\@latex@warning@no@line{No \noexpand\Binstitute given}}

\def\Babteilung#1{\gdef\@Babteilung{#1}}
\def\@Babteilung{\@latex@warning@no@line{No \noexpand\Babteilung given}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% define a custom title page
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

Abgegeben am \@date


\end{center}

\end{titlepage}



\cleardoublepage
\pagenumbering{roman}



\ifx \hdnormal \hdtrue

Die vorliegende Arbeit wurde \@institute\ in der Zeit von \mbox{\@dateStart}\ bis \mbox{\@dateEnd}\ angefertigt.

\vspace{4em}
\begin{tabular}{ll}
\makebox[2.5in]{\hrulefill} & \makebox[2.5in]{\hrulefill}\\
{Ort, Datum} & {Unterschrift (Betreuer)}\\% adds space between the two sets of signatures
\end{tabular}

\vspace{4em}
\fi


\ifx\hdthesis \hdtrue
Die vorliegende Masterarbeit wurde \@institute\ in der Zeit von \mbox{\@dateStart}\ bis \mbox{\@dateEnd}\ angefertigt.

\vspace{4em}

\begin{tabbing}
    xxxxxxxxxxxxxxxxxxxxxxxxxxx \= xxxxxxxxxxxxxxxxxxxxxxxxxx \kill
    Gutachter der Arbeit: \> \@Aname \\
     \> \@Aabteilung \\
     \> \@Ainstitute \\
\end{tabbing}

\vspace{1em}

\begin{tabbing}
    xxxxxxxxxxxxxxxxxxxxxxxxxxx \= xxxxxxxxxxxxxxxxxxxxxxxxxx \kill
    Zweitgutachter der Arbeit: \> \@Bname \\
    \> \@Babteilung \\
    \> \@Binstitute \\
\end{tabbing}

\vspace{1em}
\fi


\section*{Eigenständigkeitserklärung}

\ifx \hderklaerung \hdtrue  
Ich erkläre hiermit ehrenwörtlich, dass:
\begin{enumerate}
    \item ich die vorliegende Bachelor-/Masterarbeit selbständig unter Anleitung verfasst und keine anderen als die angegebenen Quellen und Hilfsmittel benutzt habe;
    \item die Übernahme wörtlicher Zitate aus der Literatur/Internet sowie die Verwendung der Gedanken anderer Autoren an den entsprechenden Stellen innerhalb der Arbeit gekennzeichnet wurde;
    \item ich meine Bachelor-/Masterarbeit bei keiner anderen Prüfung vorgelegt habe.
\end{enumerate}
Ich bin mir bewusst, dass eine falsche Erklärung rechtliche Folgen haben wird. 

\else

Ich erkläre hiermit ehrenwörtlich, dass ich die vorliegende Arbeit selbstständig angefertigt habe. Sämtliche aus fremden Quellen direkt oder indirekt übernommenen Gedanken sind als solche kenntlich gemacht. Die Arbeit wurde keiner anderen Prüfungsbehörde vorgelegt und noch nicht veröffentlicht

\fi

\vspace{4em}
\begin{tabular}{ll}
\makebox[2.5in]{\hrulefill} & \makebox[2.5in]{\hrulefill}\\
Ort, Datum & Unterschrift\\% adds space between the two sets of signatures
\end{tabular}
\ifx \hderklaerung \hdtrue 
\vspace{1em} 
Hinweis: Ohne Unterschrift, Datums- und Ortsangabe ist diese Erklärung ungültig und damit auch die Bachelor-/Masterarbeit. 
\fi

\setlength{\parindent}{8pt}
\cleardoublepage


}
