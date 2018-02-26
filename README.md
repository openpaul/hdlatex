# hdlatex - Latex for MoBis
This class should help you use latex for your master at the University Heidelberg. 

It implements all needed features to comply with th IPMB format. Such as citation style, page numbering, a nice title page etc.

As of 2018 it contains several options which are documented in the top of `example.tex`.

## Options

First you must decide between the `hdprotokoll` and the `hdthesis` class. The thesis class is based on `scrbook` and must be used with `\chapter` as the main headings. The `hdprotokoll` class is based on `scrartcl` and has `\section` as the top headings.

Using the protokoll class one can write reports for internships or the summary of the "Wissenschaftliche Vorträge".


### Wissenschaftliche Vorträge
If the option `summary` is given the command `\hdtitle{}{}{}{}` is supplied and should be used instead of `\section`. It creates a table of contents as asked for by the IPMB, which can be shown using `\listofhdtitle` instead of `\tableofcontents`.  See `example.tex`.

```
\hdtitle{Title of the talk}{Prof. Name}{dd.mm.YYYY}{Type of Talk (e.g. DKFZ Seminar)}
```




## The files explained

- biblatex.cfg: configure biblatex/biber to comply with cell citation style as requested (2017). Has to be in the same folder as .tex file
- bibliothek.bib: you can put citations here or chnage this in the example.tex
- example.tex: This is your thesis, report or whatever .tex file. Make changes here
- hdprotokoll.cls: The class. This has to be in the same folder as your .tex file

## Sharing is caring
If you improve this template, please consider sharing it, so that others can use it as well.

## Support
If you have problems try opening a ticket. Maybe we can fix it.
