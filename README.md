# IFB TCC model

## Live Preview:
  The live preview is available in the ShareLatex website (Might be a few minor version behind)
  
  - IFBtcc : https://www.sharelatex.com/templates/5ab7b4a46004ddcd341b36ce

## How to propperly Download:

You can download the latest release from the [Download Page](https://github.com/IFBmodels/tcc/releases/latest), or clone this repository recursively:

    git clone  --recursive https://github.com/IFBmodels/tcc


## The Project

The IFB Tcc Latex Template is a project for providing an elegant, almost fully customizable, LaTeX class and template for B.Sc., M.Sc. and Ph.D. thesis. It is developed by IFB's Computer Science Researches and it was initially based on RiSE Thesis from UFPE. The manual of IFB Thesis is still valid for the IFB Tcc template.

The template is also a good start point for developing your own latex class. So, feel free to reuse it anywhere for any purpose.

The following features are provided by the class:

- Writing Academic Assignments (style option: acd)
- Writing Pre-Proposal documents (style option: pcc)
- Writing B.Sc. documents (style option: bsc)
- Writing M.Sc. documents (style option: msc)
- Writing Ph.D. documents
  - Proposal (style option: prop)
  - Qualification (style option: qual)
  - Final thesis (style option: phd)
- Language options
  - English (style option: en)
  - Portuguese (style option: pt)
- Line spacing options
  - Single spacing (command: \singlespacing)
  - One half spacing command: \(onehalfspacing)
  - Double spacing (command: \doublespacing)
- Pagination options
  - One sided, for unique face press (style option: oneside)
  - Two sided, for two faces press (style option: twoside)
- List of abbreviations through the acronym package
- List of source code through listings package
- Referencing commands (useful for writing language independent documents)
  - \figref — for Figure reference
  - \tabref — for Table reference
  - \eqnref — for equation reference
  - \chapref — for chapter reference
  - \secref — for section reference
  - \appref — for appendix reference
  - \axiref — for axiom reference
  - \conjref — for conjecture reference
  - \defref — for definition reference
  - \lemref — for lemma reference
  - \theoref — for theorem reference
  - \corref — for corollary reference
  - \propref — for proprosition reference
  - \pgref — for page reference

## For inserting Blocks of code:



    \begin{code}[language=Code_Language,caption=Name of your Block of Code,label=code:SHORT_NAME]

      \\your code in here

    \end{code}

### Supported languages
It supports the following programming languages:

ABAP<sup>2,4</sup>, ACSL, Ada<sup>4</sup>, Algol<sup>4</sup>, Ant, Assembler<sup>2,4</sup>, Awk<sup>4</sup>, bash, Basic<sup>2,4</sup>, C#<sup>5</sup>, C++<sup>4</sup>, C<sup>4</sup>, Caml<sup>4</sup>, Clean, Cobol<sup>4</sup>, Comal, csh, Delphi, Eiffel, Elan, erlang, Euphoria, Fortran<sup>4</sup>, GCL, Gnuplot, Haskell, HTML, IDL<sup>4</sup>, inform, Java<sup>4</sup>, JVMIS, ksh, Lisp<sup>4</sup>, Logo, Lua<sup>2</sup>, make<sup>4</sup>, Mathematica<sup>1,4</sup>, Matlab, Mercury, MetaPost, Miranda, Mizar, ML, Modelica<sup>3</sup>, Modula-2, MuPAD, NASTRAN, Oberon-2, Objective C<sup>5</sup> , OCL4, Octave, Oz, Pascal<sup>4</sup>, Perl, PHP, PL/I, Plasm, POV, Prolog, Promela, Python, R, Reduce, Rexx, RSL, Ruby, S<sup>4</sup>, SAS, Scilab, sh, SHELXL, Simula<sup>4</sup>, SQL, tcl<sup>4</sup>, TeX<sup>4</sup>, VBScript, Verilog, VHDL<sup>4</sup>, VRML<sup>4</sup>, XML, XSLT.

For some of them, several dialects are supported. For more information, refer to the documentation that comes with the package, it should be within your distribution under the name listings-*.dvi.

#### Notes
1. It supports Mathematica code only if you are typing in plain text format. You can't include *.NB files \lstinputlisting{...} as you could with any other programming language, but Mathematica can export in a pretty-formatted LaTeX source.
2. Specification of the dialect is mandatory for these languages (e.g. language={[x86masm]Assembler}).
3. Modelica is supported via the dtsyntax package available here.
4. For these languages, multiple dialects are supported. C, for example, has ANSI, Handel, Objective and Sharp. See p. 12 of the listings manual for an overview.
5. Defined as a dialect of another language

### For IFB students

The ifbclass Latex class has been tested. A lot of contributions from them has been also received. Thus, it satisfies most of the requirements from the department about the thesis format. However, probably some customization will be needed to fully satisfies the cover that is provided by the department when printing the final thesis to the library.

### Customization

The ifbclass Latex class is easily customizable for the most common document issues through the options that the class provides. For a complete list of options see the examples provided in the distribution package.

If the options provided by the class are not enough for the customization, we believe that it is very easy to hack the class file.

### ACKNOWLEDGEMENTS

We would like to thanks the RiSE's researchers community, the students from Federal University of Pernambuco, and other users that have contributed to the project this one has been forked from.
