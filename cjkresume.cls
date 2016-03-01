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

\ProvidesClass{cjkresume}[2014/12/08 My custom Resume class]
\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\RequirePackage{titlesec}
\RequirePackage{color}
\RequirePackage{enumitem}
\RequirePackage[left=0.5in,top=0.4in,right=0.5in,bottom=0.4in]{geometry} % Document margins
\RequirePackage{xeCJK}
\RequirePackage{multicol}
\RequirePackage{tabularx}
\RequirePackage{array}
\newcolumntype{L}{>{\raggedright\arraybackslash}X}
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{R}{>{\raggedleft\arraybackslash}X}
%\setCJKmainfont[AutoFakeBold=true,AutoFakeSlant=.3]{SimSun}
% Using Heiti as BoldFont and Kaiti as italic font for CJK
\setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}

\pagestyle{empty} % Suppress page numbers
\newcommand{\headcolor}{\color[RGB]{31,73,125}} % Section and Title color
\newcommand{\addressSep}{$\diamond$}% Set default address separator to a diamond

\newcommand{\name}[1]{
  \begin{center}
  {\uppercase{\bf\headcolor\Huge{#1}}}
  \par
  \end{center}
  \vspace{-1em}
}

\newcommand{\address}[4]{
  \begin{center}
  电话: #1\hspace{6em}E-mail: #2\hspace{6em}性别: #3\\
  地址: #4
  \par
  \end{center}
  \vspace{-2.3em}
}

\titleformat{\section}         % Customise the \section command 
  {\headcolor\bfseries\Large\raggedright} % Make the \section headers large (\Large),
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
  [\vspace{-0.2em}]

\newcommand{\internship}[2]{
  \subsection[#1]{\textbf{#1}\hfill#2}
}

\newcommand{\project}[3]{
  \subsection[#1]{\makebox[0.5\textwidth][l]{\textbf{#1}}\textbf{#2}\hfill#3}
}

% education 命令占用的空间较大，一个教育经历需要占据3行
\newcommand{\education}[5]{
  \subsection[#1]{\textbf{#1}\hfill#2\\#3\hfill#4\\#5}
}

\newcommand{\scholarship}[3]{
  \subsection[#1]{#1~(#2)\hfill#3}
}

\newcommand{\award}[2]{
  \subsection[#1]{#1\hfill#2}
}

\newenvironment{workitemize}{
  \begin{itemize}[nosep,label=$\diamond$]
}
{
  \end{itemize}
  \vspace{-1.0em}
}

\newenvironment{workdetailitemize}{
  \begin{itemize}[nosep,label=$\triangleright$]
}
{
  \end{itemize}
}

\newenvironment{skilltable}{
  \noindent\begin{tabular}{@{}p{10em}l} % two cloumns, first width is 10em, and left margin is 0pt
}
{
  \end{tabular}
  \vspace{-1.0em}
}

\newcommand{\timedash}{\,\,--\,\,}

\makeatletter
\DeclareRobustCommand{\em}{%
  \@nomath\em \if b\expandafter\@car\f@series\@nil
  \normalfont \else \bfseries \fi}
\makeatother
