%% Copyright (C) 2008-09-24 by Wei-Wei Guo <wwguo@zjut.edu.cn>
%% Copyright (C) 2012-12-28 by Myau-tsai PAN <ibmmc@live.com>, Unlucky <unlucky1990@gmail.com>
%% Copyright (C) 2023-01-21 by liuzheng <bug@ilz.me>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{zjutthesis}
    [2023/01/22 v1.0 ZJUT Thesis Class]

\newif\ifzjut@thesis\zjut@thesisfalse
\newif\ifzjut@translation\zjut@translationfalse
\newif\ifzjut@literaturereview\zjut@literaturereviewfalse
\newif\ifzjut@proposal\zjut@proposalfalse
\DeclareOption{translation}{\zjut@translationtrue}
\DeclareOption{literaturereview}{\zjut@literaturereviewtrue}
\DeclareOption{proposal}{\zjut@proposaltrue}
\DeclareOption{thesis}{\zjut@thesistrue}

\ProcessOptions\relax
\LoadClass[12pt,oneside,openany]{book}

\RequirePackage{styles/base}
\RequirePackage{styles/color}
\RequirePackage{styles/font}
\RequirePackage{styles/code}
\RequirePackage{styles/graph}
\RequirePackage{styles/math}
\RequirePackage{styles/table}

\newcommand\reportheadtitle{\zjut@label@defaultheadtitle}
\newcommand\reporttitle{\zjut@label@defaulttitle}
\ifzjut@thesis
    \RequirePackage{styles/thesis}
\fi
\ifzjut@translation
    \renewcommand\reporttitle{\zjut@label@translationtitle}
    \renewcommand\reportheadtitle{\zjut@label@translationheadtitle}
    \RequirePackage{styles/report}
\fi
\ifzjut@literaturereview
    \renewcommand\reporttitle{\zjut@label@literaturereviewtitle}
    \renewcommand\reportheadtitle{\zjut@label@literaturereviewheadtitle}
    \RequirePackage{styles/report}
\fi
\ifzjut@proposal
    \renewcommand\reporttitle{\zjut@label@proposaltitle}
    \renewcommand\reportheadtitle{\zjut@label@proposalheadtitle}
    \RequirePackage{styles/report}
\fi
