FROM ubuntu:20.04

# set timezone for tzdata
ENV TZ=Europe/Berlin

# dont interact when installing packages
ENV DEBIAN_FRONTEND=noninteractive

# update and install latex
RUN apt-get update && apt-get install -y texlive-xetex biber

# copy the script for compiling
COPY compileLatexContainer.sh /bin/compileLatex
RUN chmod +x /bin/compileLatex

# a CMD command cannot be specified, because the name of the tex file is not known here
