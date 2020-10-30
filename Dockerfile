FROM ubuntu:20.04

RUN apt-get update && apt-get install texlive-xetex biber

COPY compileLatex.sh /bin/compileLatex
RUN chmod +x /bin/compileLatex
