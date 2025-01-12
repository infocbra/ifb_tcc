%%-----------------------------------------------------------------------------
%% The LaTeX Project Public License
%%-----------------------------------------------------------------------------
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% Further information about abnTeX2 are available on http://www.abntex.net.br/
%------------------------------------------------------------------------------
% Codificação: UTF-8
% LaTeX:  abnTeX2
% -----------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{configuracoes/norma-abntex2}[2016/07/07 v1.0]

% Repassa os parâmetros ao abntex2
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}

\PassOptionsToClass{%
% Opções da classe memoir
    12pt,                     % Tamanho da fonte
    a4paper,                  % Tamanho do papel.
    sumario=abnt-6027-2012,   % Sumario padrão ABNT
    %sumario=tradicional,     % Seleciona o sumário tradicional
% Opções do pacote babel
    brazil,                   % Idioma do documento
}{abntex2}

\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage[brazilian, hyperpageref]{backref}       % Produzir índice nas referências
\RequirePackage{makeidx}                                % Produzir índice remissivo de palavras
\RequirePackage{chngcntr}

% -----------------------------------------------------------------------------
%                           CONFIGURAÇÕES GERAIS
% -----------------------------------------------------------------------------

% Retira o espaço extra desnecessário nas frases
\frenchspacing

% Configurações do pacote backref usado sem a opção hyperpageref de backref
\renewcommand{\backrefpagesname}{}

% Texto padrão antes do número das páginas
\renewcommand{\backref}{}

% Define as listas de item compactas (sem espaçamento entre os itens)
\setlist{noitemsep, topsep=0pt, parsep=0pt, partopsep=0pt}

% Define os textos da citação
\renewcommand*{\backrefalt}[4]

% -----------------------------------------------------------------------------
%                       NUMERAÇÃO DAS FIGURAS E EQUAÇÃO
% -----------------------------------------------------------------------------

% Define a numeração das equações de forma sequencial
%\counterwithout{equation}{chapter}

% Define a numeraçao das equaçoes por capitulo
% \counterwithin{figure}{chapter}

% -----------------------------------------------------------------------------
%                              COMANDOS DE DADOS
% -----------------------------------------------------------------------------

% Comandos de dados - Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - Programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% Comandos de dados - Subtítulo do trabalho
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

% Comandos de dados - Instituição do orientador
\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}

% Comandos de dados - Instituição do coorientador
\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}

% Comandos de dados -  Tipo de trabalho acadêmico (trabalho de conclusão de curso, tese, dissertação ou projeto de qualificação)
\providecommand{\imprimirprojeto}{}
\newcommand{\projeto}[1]{\renewcommand{\imprimirprojeto}{#1}}

% Comandos de dados - Título Acadêmico a ser alcançado (Bacharel, Tecnólogo)
\providecommand{\imprimirtituloAcademico}{}
\newcommand{\tituloAcademico}[1]{\renewcommand{\imprimirtituloAcademico}{#1}}

% Comandos de dados - Título em Inglês
\providecommand{\imprimirautorcitacao}{}
\newcommand{\autorcitacao}[1]{\renewcommand{\imprimirautorcitacao}{#1}}

% Comandos de dados - Área de concentração com Rótulo
\newcommand{\imprimirareaconcentracaoRotulo}{\'Area de concentra\c{c}\~ao: }
\providecommand{\imprimirareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\imprimirareaconcentracao}{#1}}

% Comandos de dados - linha de pesquisa
\newcommand{\imprimirlinhapesquisaRotulo}{Linha de pesquisa: }
\providecommand{\imprimirlinhapesquisa}{}
\newcommand{\linhapesquisa}[1]{\renewcommand{\imprimirlinhapesquisa}{#1}}

% Comandos de dados - Texto da folha de aprovação
\providecommand{\imprimirtextopadraofolhadeaprovacao}{}
\newcommand{\textopadraofolhadeaprovacao}[1]{\renewcommand{\imprimirtextopadraofolhadeaprovacao}{#1}}

% Comandos de dados - Logomarca da instituição
\providecommand{\imprimirlogoinstituicao}{}
\newcommand{\logoinstituicao}[2]{\renewcommand{\imprimirlogoinstituicao}{\includegraphics[width={#1}\textwidth]{#2}}}

% Comando de dados - Membro 2 da banca
\providecommand{\imprimirbancamembrodois}{}
\newcommand{\bancamembrodois}[1]{\renewcommand{\imprimirbancamembrodois}{#1}}

% Comando de dados - Instituição membro 2 da banca
\providecommand{\imprimirinstBancamembrodois}{}
\newcommand{\instbancamembrodois}[1]{\renewcommand{\imprimirinstBancamembrodois}{#1}}

% Comando de dados - Membro 3 da banca
\providecommand{\imprimirbancamembrotres}{}
\newcommand{\bancamembrotres}[1]{\renewcommand{\imprimirbancamembrotres}{#1}}

% Comando de dados - Instituição membro 3 da banca
\providecommand{\imprimirinstBancamembrotres}{}
\newcommand{\instbancamembrotres}[1]{\renewcommand{\imprimirinstBancamembrotres}{#1}}

% Comando de dados - Suplente da banca
\providecommand{\imprimirbancasuplente}{}
\newcommand{\bancasuplente}[1]{\renewcommand{\imprimirbancasuplente}{#1}}

% Comando de dados - Instituição suplente da banca
\providecommand{\imprimirinstBancasuplente}{}
\newcommand{\instbancamembrosuplente}[1]{\renewcommand{\imprimirinstBancasuplente}{#1}}

% Comando de dados - Data da aprovaçao
\providecommand{\imprimirdataaprovacao}{}
\newcommand{\dataaprovacao}[1]{\renewcommand{\imprimirdataaprovacao}{#1}}

% Comandos de dados - Tipo do orientador
\providecommand{\imprimirtipoorientador}{}
\newcommand{\tipoorientador}[1]{\renewcommand{\imprimirtipoorientador}{#1}}

% Comandos de dados - Tipo do membro 2 da banca
\providecommand{\imprimirtipobancamembrodois}{}
\newcommand{\tipobancamembrodois}[1]{\renewcommand{\imprimirtipobancamembrodois}{#1}}

% Comandos de dados - Tipo do membro 3 da banca
\providecommand{\imprimirtipobancamembrotres}{}
\newcommand{\tipobancamembrotres}[1]{\renewcommand{\imprimirtipobancamembrotres}{#1}}

% Comandos de dados - Tipo do suplente da banca
\providecommand{\imprimirtipobancasuplente}{}
\newcommand{\tipobancasuplente}[1]{\renewcommand{\imprimirtipobancasuplente}{#1}}


% -----------------------------------------------------------------------------
%                       ESTILOS DE ELEMENTOS
% -----------------------------------------------------------------------------

% Elementos pré-textuais
\renewcommand{\pretextual}
{%
    \aliaspagestyle{chapter}{empty}
    \pagestyle{empty}
    \aliaspagestyle{cleared}{empty}
    \aliaspagestyle{part}{empty}
}

% Configura layout para elementos textuais
\renewcommand{\textual}
{%
    \pagestyle{simple}
    %\pagestyle{abntheadings} % Cabeçalho com numeraçao e nome do capitulo
    \aliaspagestyle{chapter}{abntchapfirst}
    \nouppercaseheads
    \bookmarksetup{startatroot}
}

% Configura layout para elementos pós-textuais
\renewcommand{\postextual}
{%
    \chapterstyle{abnt}
    \phantompart
}

% -----------------------------------------------------------------------------
%                           OBJETOS FLUTUANTES
% -----------------------------------------------------------------------------

% Comando que trata a fonte nos objetos flutuantes
\renewcommand{\fonte}[1]
{%
    %\begin{SingleSpacing}\par\end{SingleSpacing}
    %\centering\small{Fonte: #1}
    \captionsetup{font=small, justification=raggedright} % Adicione singlelinecheck=true ao comando \fonte
    \caption*{\begin{minipage}[t]{\linewidth}Fonte: #1\end{minipage}} % Use minipage para alinhar a \fonte à esquerda da borda da tabela
}

% Comando que trata as notas nos objetos flutuantes
\renewcommand{\nota}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \begin{tabular}{l p{.85\textwidth}}%
        Nota: & #1
    \end{tabular}
}

% -----------------------------------------------------------------------------
%                              PARÁGRAFOS
% -----------------------------------------------------------------------------

% Tamanho da indentação do parágrafo
\setlength{\parindent}{1.5cm}

% Espaçamento entre um parágrafo e outro
\setlength{\parskip}{0.0cm}

% -----------------------------------------------------------------------------
%                               FONTES
% -----------------------------------------------------------------------------

% Redefinição de fontes
\renewcommand{\ABNTEXchapterfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

\renewcommand{\ABNTEXpartfont}{\normalfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\normalfont\bfseries\itshape}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont\itshape}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}


% -----------------------------------------------------------------------------
%                                 SUMÁRIO
% -----------------------------------------------------------------------------

% Travessão no sumário para apêndices e anexos
%\renewcommand{\cftchapteraftersnum}{\hfill\textendash\hfill}

% Insere espaço entre os itens do sumário de diferentes capítulos
\setlength{\cftbeforechapterskip}{1.0em \@plus\p@}

% Fontes do sumário
\renewcommand{\cftsectionfont}{\normalfont\bfseries}
\renewcommand{\cftsubsectionfont}{\normalfont\bfseries\itshape}
\renewcommand{\cftsubsubsectionfont}{\normalfont\itshape}
\renewcommand{\cftsubsubsubsectionfont}{\normalfont}

% -----------------------------------------------------------------------------
%                                LISTAS 
% -----------------------------------------------------------------------------

% Define os títulos das listas
\addto\captionsbrazil{%
% Ajusta nomes padrões do babel
    \renewcommand{\listadesiglasname}{LISTA DE ABREVIATURAS E SIGLAS}
    \renewcommand{\listadesimbolosname}{LISTA DE S\'{I}MBOLOS}
    \renewcommand{\listfigurename}{LISTA DE FIGURAS}
    \renewcommand{\listtablename}{LISTA DE TABELAS}
    \renewcommand{\indexname}{\'{I}NDICE REMISSIVO}
% Ajusta nomes usados com a macro \autoref
    \renewcommand{\pageautorefname}{p\'agina}
    \renewcommand{\sectionautorefname}{Se\c{c}\~ao}
    \renewcommand{\subsectionautorefname}{Subse\c{c}\~ao}
    \renewcommand{\subsubsectionautorefname}{Subsubse\c{c}\~ao}
    \renewcommand{\paragraphautorefname}{Subse\c{c}\~ao}
}

% Cria a lista de quadros
\newcommand{\listofquadrosname}{Lista de Quadros}
\newcommand{\quadroname}{Quadro}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}

% -----------------------------------------------------------------------------
%                                    CAPA
% -----------------------------------------------------------------------------
\makeatletter
\renewcommand{\imprimircapa}{
    \begin{capa}
        \begin{center}
		\begin{SingleSpacing}
		            \imprimirlogoinstituicao
		            
            		\large{\imprimirinstituicao}
              
	    		    \abntex@ifnotempty{\imprimirdepartamento}
            		{
                		\imprimirdepartamento \\
            		}
           		\large{\imprimirprograma} \\
		\end{SingleSpacing}
        \end{center}
        \vspace{60pt}
	\begin{center}
		\large{\imprimirautor}\\
	\end{center}
	\vspace{120pt}
       \begin{center}
            \ABNTEXchapterfont\large\MakeUppercase{\imprimirtitulo}% 
            \unskip
            \abntex@ifnotempty{\imprimirsubtitulo}
               {%
                    {\ABNTEXchapterfont: } \\
                    {\large{\imprimirsubtitulo}}
                }
        \end{center}
	\vspace{120pt}
	\vfill
        \begin{center}
		\begin{SingleSpacing}
            		\large{\imprimirlocal}\\
            		\large{\imprimirdata}
		\end{SingleSpacing}
    	\end{center}

    \end{capa}

}
\makeatother

% -----------------------------------------------------------------------------
%                               FOLHA DE ROSTO
% -----------------------------------------------------------------------------
\makeatletter
\renewcommand{\folhaderostocontent}
{%
    \setcounter{page}{2}
    \begin{center}
        \large{\imprimirautor}\\
    \end{center}

    \vspace*{96pt}

    \begin{center}
        \ABNTEXchapterfont\large\MakeUppercase{\imprimirtitulo}
        \unskip
        \abntex@ifnotempty{\imprimirsubtitulo}
	{%
        	{\ABNTEXchapterfont: } \\
            {\large{\imprimirsubtitulo}}
        }
    \end{center}

    \vspace*{60pt}

    \abntex@ifnotempty{\imprimirpreambulo}
    {%
        \SingleSpacing
        \begin{tabular}{p{.25\textwidth}p{.13\textwidth}p{.44\textwidth}}
            & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirpreambulo}} \\ & & \\
            \abntex@ifnotempty{\imprimirareaconcentracao}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirareaconcentracaoRotulo\imprimirareaconcentracao}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirlinhapesquisa}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirlinhapesquisaRotulo\imprimirlinhapesquisa}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirorientador}
            {%
                & \small\imprimirorientadorRotulo & \imprimirorientador \\
                & & \small\imprimirinstOrientador \\ & & \\
            }
            \abntex@ifnotempty{\imprimircoorientador}
            {%
                & \small\imprimircoorientadorRotulo & \imprimircoorientador \\
                & & \small\imprimirinstCoorientador
            }
        \end{tabular}
    }

    \vspace*{\fill}

    \begin{center}
	\begin{SingleSpacing}
            \large{\imprimirlocal}\\
            \large{\imprimirdata}
	\end{SingleSpacing}
    \end{center}

}
\makeatother



% -----------------------------------------------------------------------------
%                               FOLHA DE APROVAÇÃO
% -----------------------------------------------------------------------------
\makeatletter
\newcommand{\imprimirfolhadeaprovacao}
{%
    \begin{center}
        \large{\imprimirautor}\\
    \end{center}

    \vspace*{96pt}

    \begin{center}
        \ABNTEXchapterfont\large\MakeUppercase{\imprimirtitulo}
        \unskip
        \abntex@ifnotempty{\imprimirsubtitulo}
	{%
        	{\ABNTEXchapterfont: } \\
            {\large{\imprimirsubtitulo}}
        }
    \end{center}

    \vspace*{60pt}
%%%

    \abntex@ifnotempty{\imprimirpreambulo}
    {%
    \begin{SingleSpacing}
    \begin{tabular}{p{.25\textwidth}p{.13\textwidth}p{.44\textwidth}}
            & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirpreambulo}} \\ & & \\
            \abntex@ifnotempty{\imprimirareaconcentracao}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirareaconcentracaoRotulo\imprimirareaconcentracao}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirlinhapesquisa}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirlinhapesquisaRotulo\imprimirlinhapesquisa}} \\ & & \\
            }
    
        \end{tabular}
\end{SingleSpacing}
    }
%%%
   \vspace*{\fill}

\begin{flushleft}
Aprovado em \imprimirdataaprovacao
\end{flushleft}

\vspace*{\fill}

    \begin{center}
    BANCA EXAMINADORA\\

    \assinatura{\imprimirorientador \\
    \imprimirinstOrientador \\
    \imprimirtipoorientador
    }
    \assinatura{\imprimirbancamembrodois \\ 
    \imprimirinstBancamembrodois \\ 
    \imprimirtipobancamembrodois
    }
    \assinatura{\imprimirbancamembrotres \\ 
    \imprimirinstBancamembrotres \\ 
    \imprimirtipobancamembrotres
    }
    
    \ifdefvoid{\imprimirbancasuplente}{}{
        \ifdefvoid{\imprimirinstBancasuplente}{}{
            \assinatura{\imprimirbancasuplente \\
            \imprimirinstBancasuplente \\
            \imprimirtipobancasuplente
            }
        }
    }
    \end{center}

}
\makeatother
\nopagebreak


% -----------------------------------------------------------------------------
%                               DEDICATÓRIA
% -----------------------------------------------------------------------------
\renewenvironment{dedicatoria}[1][]
{%
    \ifthenelse{\equal{#1}{}}{%
        \PRIVATEbookmarkthis{\dedicatorianame}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}

% ----------------------------------------------------------------------------
%                                   EPÍGRAFE
% ----------------------------------------------------------------------------
\renewenvironment{epigrafe}[1][]
{%
    \ifthenelse{\equal{#1}{}}
    {%
        \PRIVATEbookmarkthis{\epigraphname}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}
