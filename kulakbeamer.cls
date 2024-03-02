% This template is based on the layout of the beamer style beamerthemekuleuven2, which can be found at
% https://www.kuleuven.be/communicatie/marketing/templates/presentatiemateriaal/index.html
% Not all of the options provided by the beamer style are implemented in this class file.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kulakbeamer}[2024-02-29 Beamer class for KU Leuven]
\DeclareOption*{\PassOptionsToClass{\CurrentOption, aspectratio=169, t}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}

% Fonts & encoding
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}

%%% COLOURS %%%

% Main colours
\definecolor{KULblue1}      {RGB}   {  29, 141, 176 } % primary blue
\definecolor{KULblue2}      {RGB}   { 220, 231, 240 } % 20% of primary blue

% Accent colours
% Tertiary blues
\definecolor{KULblue3a}     {RGB}   {  82, 189, 236 } % light
\definecolor{KULblue3b}     {RGB}   {  30, 110, 135 } % dark
\definecolor{KULblue3c}     {RGB}   {  12,  73,  92 } % darkest

% Tertiary colour scheme
\definecolor{KULcyan}       {RGB}   { 135, 192, 189 }
\definecolor{KULorange}     {RGB}   { 231, 176,  55 }
\definecolor{KULdarkgreen}  {RGB}   { 156, 166,  90 }
\definecolor{KULyellow}     {RGB}   { 228, 218,  62 }
\definecolor{KULgreyblue}   {RGB}   { 184, 208, 212 }
\definecolor{KULbrown}      {RGB}   { 176, 159, 118 }
\definecolor{KULred}        {RGB}   { 212, 119, 110 }
\definecolor{KULgold}       {RGB}   { 203, 182,  16 }
\definecolor{KULpurple}     {RGB}   { 170, 121, 130 }
\definecolor{KULpink}       {RGB}   { 199, 147, 174 }
\definecolor{KULlightgreen} {RGB}   { 212, 216,  66 }
\definecolor{KULredbrown}   {RGB}   { 186, 113,  60 }

% Colours from beamer style
\definecolor{lgrey}         {gray}  {.95}             % light grey from beamerstyle


% Class options
\DeclareOptionBeamer{kulak}
{
    \providecommand{\Background}{\includegraphics[width=\paperwidth,height=\paperheight]{bg/kulakBackground}}
    \providecommand{\Outline}   {\includegraphics[width=\paperwidth,height=\paperheight]{bg/kulakOutline}}
    \providecommand{\Titlepage} {\includegraphics[width=\paperwidth,height=\paperheight]{bg/kulakTitlepage}}
}
\DeclareOptionBeamer{kul}
{
    \renewcommand{\Background}  {\includegraphics[width=\paperwidth,height=\paperheight]{bg/kuleuvenBackground}}
    \renewcommand{\Outline}     {\includegraphics[width=\paperwidth,height=\paperheight]{bg/kuleuvenOutline}}
    \renewcommand{\Titlepage}   {\includegraphics[width=\paperwidth,height=\paperheight]{bg/kuleuvenTitlepage}}
}


\newcommand{\InsertFrames}{\insertframenumber}
\DeclareOptionBeamer{totalframes}
{
    \renewcommand{\InsertFrames}{\insertframenumber/\inserttotalframenumber}
}


\newcommand{\outlinename}{Outline}
\DeclareOptionBeamer{outline}
{
    \AtBeginSection[]{
        \begin{frame}
            \frametitle{\outlinename}
            {
                \hypersetup{hidelinks}
                \hfill
                {\large
                    \parbox{.95\textwidth}{\tableofcontents[currentsection,hideothersubsections]}
                }
            }
        \end{frame}
    }
}


\ExecuteOptionsBeamer{kulak} % standard options
\ProcessOptionsBeamer


\mode<all>

%%
%%  INNER THEME
%%

% Text colours
\hypersetup{colorlinks,linkcolor=KULblue1,urlcolor=KULblue1}                                % link colors
\urlstyle{sf}                                                                               % url addresses are sans-serif font (not typewritter)

\setbeamercolor{title}                  { fg = white                            }
\setbeamercolor{title page}             { fg = white                            }
\setbeamercolor{normal text}            { fg = black                            }           % text color
\setbeamercolor{frametitle}             { fg = KULblue1                         }           % frame title color
\setbeamercolor{section in toc}         { fg = KULblue1                         }           % toc (section) color
\setbeamercolor{section in toc shaded}  { fg = KULblue1                         }           % toc (shaded section) color
\setbeamercolor{item}                   { fg = KULblue1                         }           % item color
\setbeamercolor{subitem}                { fg = KULblue1                         }           % subitem color
\setbeamercolor{subsubitem}             { fg = KULblue1                         }           % subsubitem color
\setbeamercolor{text}                   { fg = white,    bg = KULblue1          }           % text block color
\setbeamercolor{caption name}           { fg = black                            }           % figure and table caption color
\setbeamercolor{abstract title}         { fg = red                              }           % abstract title color

% Blocks, theorem-like environments and colorboxes
\setbeamerfont{block title} {size=\normalsize}                                              % block title font size
\setbeamertemplate{qed symbol}{\color{KULblue1} \(\square\)}                                % end of proof symbol

\setbeamercolor{block title}            { fg = KULblue1, bg = lgrey             }           % block title colour
\setbeamercolor{block body}             { fg = black,    bg = lgrey             }           % block body colour

\setbeamercolor{block title alerted}    {                bg = white!95!red      }           % alertbloc title (red)
\setbeamercolor{block body alerted}     {                bg = white!95!red      }           % alertbloc body

\setbeamercolor{block title example}    { fg = KULblue1, bg = white!95!KULblue1 }           % example block title (blue)
\setbeamercolor{block body example}     { fg = black,    bg = white!95!KULblue1 }           % example block body

\setbeamercolor{box1}                   { fg = white,    bg = KULblue1          }
\setbeamercolor{box2}                   { fg = KULblue1, bg = lgrey             }
\setbeamercolor{box3}                   { fg = black,    bg = lgrey             }           % colour boxes
\setbeamercolor{box4}                   { fg = red,      bg = lgrey             }
\setbeamercolor{box5}                   { fg = white,    bg = red               }

\setbeamercolor{button}                 { fg = KULblue1, bg = lgrey             }           % button frame

% math font
\usefonttheme[onlymath]{serif}

% outline and margins
\setbeamertemplate{sections/subsections in toc}[circle]                                     % toc symbols
\setbeamersize{text margin left=21pt,text margin right=21pt}                                % text margins

% itemize list
\renewcommand\textbullet{\ensuremath{\bullet}}                                              % correction for warning for subitem circle bullect
\setbeamertemplate{itemize item}        [triangle]                                          % item symbol (triangle)
\setbeamertemplate{itemize subitem}     [circle]                                            % subitem symbol (cirlce)
\setbeamertemplate{itemize subsubitem}  {-}                                                 % subsubitem symbol (short hypthen)

% enumerate list
\setbeamertemplate{enumerate item}      {\small  \insertenumlabel  \enspace               } % enumerate symbol
\setbeamertemplate{enumerate subitem}   {\scriptsize \raisebox{.085em} \insertsubenumlabel} % subenumerate symbol
\setbeamertemplate{enumerate subsubitem}{\tiny \raisebox{.18em} \insertsubsubenumlabel}     % subenumerate symbol


%%
%%  OUTER THEME
%%
\usebackgroundtemplate{\Background}

\setbeamertemplate{navigation symbols}{} % remove the navigation symbols

% Title page
\RequirePackage{tikz}
\usetikzlibrary{calc}
\defbeamertemplate*{title page}{customized}[1][]
{\begin{tikzpicture}[remember picture,overlay]
  \node at ($(current  page.south  west)  + (-\hoffset,  -\voffset)$) {
    \begin{tikzpicture}[remember picture, overlay,inner sep=0mm,node distance=.5cm]
     \node[anchor=base] (line) at (.5cm ,.25\paperheight) {};
     \node (lineT) at (line.north west) {};
     \node (lineB) at (line.south west) {};
     \node[above of=lineT, anchor=south west, align=left, text width=.9\paperwidth] (author) {\Large \insertauthor};
     \node (authorT) at (author.north west) {};
     \node[above of=authorT, anchor=south west, align=left, text width=.9\paperwidth] (subtitle) {\textbf{\Large\insertsubtitle}};
     \node (subtitleT) at (subtitle.north west) {};
     \node[above of=subtitleT, anchor=south west, align=left, text width=.9\paperwidth] (title) {\textbf{\LARGE\inserttitle}};
     \node[below of=lineB, anchor=north west, align=left, text width=.9\paperwidth] (institute) {\large \textcolor{KULblue1}{\insertinstitute}};
     \node (instituteB) at (institute.south west) {};
     \node[below of=instituteB,anchor=north west, align=left, text width=.9\paperwidth] (date) {\textcolor{KULblue1}{\insertdate}};
    \end{tikzpicture}
  };
\end{tikzpicture}}

% Title page & outline
\AddToHook{begindocument/end}{

    % Title page
    {
        \usebackgroundtemplate{\Titlepage}
        \begin{frame}[plain,noframenumbering]
            \titlepage
        \end{frame}
    }

    % Outline
    \section*{\outlinename}
    {
        \usebackgroundtemplate{\Outline}
        \begin{frame}
            \frametitle{\outlinename}
            {
                \hypersetup{hidelinks}
                \hfill
                {\large
                    \parbox{.95\textwidth}{\tableofcontents[hideallsubsections]}
                }
            }
        \end{frame}
    }
}

% Frame title
\setbeamertemplate{frametitle}
{
    \vspace{.5cm}
    {\large\textbf{\insertframetitle}}
}

% Footer
\defbeamertemplate*{footline}{body}
{
    \hypersetup{linkcolor=white}
    \vspace{10pt}
    \hspace{.085\paperheight}
    \raisebox{8.3pt}{\color{white}\scriptsize\hspace{11pt} \InsertFrames\ \(\cdot\) \insertshorttitle\ \(\cdot\) \insertsectionhead }
}
