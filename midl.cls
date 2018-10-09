\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{midl}[2018/10/09 v1.0 MIDL Proceedings]

\@ifundefined{ifanonsubmission}{
  \newif\ifanonsubmission
  \anonsubmissionfalse
}{}

\@ifundefined{iffinalsubmission}{
  \newif\iffinalsubmission
  \finalsubmissionfalse
}{}

\DeclareOption{anon}{\anonsubmissiontrue}
\DeclareOption{final}{\finalsubmissiontrue}
\ProcessOptions\relax

\LoadClass[pmlr]{jmlr}

\jmlrproceedings{PMLR}{Proceedings of Machine Learning Research}

\renewcommand\cite{\citep}

\ifanonsubmission
 \newcommand{\midlauthor}[1]{\author{\Name{Author(s) names withheld} \Email{email(s) withheld} \\ \addr Address withheld}}
 \newcommand{\midlacknowledgments}[1]{\acks{Acknowledgments withheld.}}
\else
 \newcommand{\midlauthor}[1]{\author{#1}}
 \newcommand{\midlacknowledgments}[1]{\acks{#1}}
\fi