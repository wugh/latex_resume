%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Original header:
% Copyright (C) 2010 by Guohua Wu
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Guohua Wu
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2014/12/08 My custom Resume class]
\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\RequirePackage{titlesec}
\RequirePackage{color}
\RequirePackage{tabularx}
\RequirePackage{enumitem}
\RequirePackage[T1]{fontenc}
\RequirePackage[left=0.5in,top=0.4in,right=0.4in,bottom=0.5in]{geometry} % Document margins
\RequirePackage{array}
\newcolumntype{L}{>{\raggedright\arraybackslash}X}
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{R}{>{\raggedleft\arraybackslash}X}

\pagestyle{empty} % Suppress page numbers
\newcommand{\headcolor}{\color[RGB]{31,73,125}}
\newcommand{\addressSep}{$\diamond$}% Set default address separator to a diamond

\newcommand{\name}[1]{
  \begin{center}
  {\uppercase{\bf\headcolor\Huge{#1}}}
  \par
  \end{center}
  \vspace{-1em}
}

\newcommand{\address}[3]{
  \begin{center}
  Tel: #1\hspace{8em}E-mail: #2\\
  Address: #3
  \par
  \end{center}
  \vspace{-2em}
}

\titleformat{\section}         % Customise the \section command 
  {\headcolor\bfseries\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}                           % Can be used to give a prefix to all sections, like 'Section ...'
  {0em}                        % The horizontal separation between label and title body
  {}                           % Can be used to insert code before the heading
  [\titlerule\vspace{-0.2em}]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}         % Customise the \section command 
  {\normalsize\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}                           % Can be used to give a prefix to all sections, like 'Section ...'
  {0em}                        % The horizontal separation between label and title body
  {}                           % Can be used to insert code before the heading
  [\vspace{-0.3em}]

\newcommand{\internship}[3]{
  \subsection[#1]{\textbf{#1}, \emph{#2}\hfill#3}
}

\newcommand{\projecttitle}[2]{
  \subsection[#1]{\textbf{#1}\hfill#2}
}

\newcommand{\project}[3]{
  \subsection[#1]{\makebox[0.58\textwidth][l]{\textbf{#1}}\textbf{#2}\hfill#3}
}

\newcommand{\education}[5]{
  \subsection[#1]{\textbf{#1}\hfill#2\\#3\hfill#4\\#5}
}

\newenvironment{workitemize}{
  \begin{itemize}[nosep,label=$\diamond$]
}
{
  \end{itemize}
  \vspace{-1.0em}
}

\newenvironment{skilltable}{
  \noindent\begin{tabular}{@{}p{140pt}l} % two cloumns, first width is 10em, and left margin is 0pt
}
{
  \end{tabular}
  \vspace{-1.0em}
}

\newcommand{\timedash}{\,\,--\,\,}

\newcommand{\scholarship}[3]{
  \subsection[#1]{#1~(#2)\hfill#3}
}

\newcommand{\award}[2]{
  \subsection[#1]{#1\hfill#2}
}
