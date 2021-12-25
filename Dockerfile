FROM debian:10.8

RUN apt-get update && apt-get install --yes  \ 
texlive-fonts-recommended \
texlive-generic-recommended \
texlive-latex-extra \
texlive-fonts-extra \
dvipng \
texlive-latex-recommended \
texlive-base \
texlive-pictures \
texlive-lang-cyrillic \
texlive-science \
cm-super \
texlive-generic-extra \
texlive-bibtex-extra \
texlive-bibtex-extra biber

COPY /Nick-Oliger-CV /NickOliger-CV-Docker 
WORKDIR /NickOliger-CV-Docker
RUN pdflatex -synctex=1 -interaction=nonstopmode english.tex
