# Compile latex in a container

Installing Latex can be a pain so I created a setup in a container so I never have to do it again.

## usage

1. start the container with `docker run -v ${PWD}/:/app/ -it --rm ghcr.io/jgero/latex-container/compile-latex-container:{ VERSION_NUMBER }`
  - replace `{ VERSION_NUMBER }` with the desired version number (ex. v6)
2. in the shell of the container go into the `/app` directory
3. with `compileLatex <filename>` the .tex file with that name will be compiled (file extension should not be provided -> `filename` instead of `filename.tex`)
4. the pdf and all output files will be in the directory of your machine next to the .tex file

This will run xelatex and biber on the tex file you provide in the argument in the container.

## hints for developing

Images are automatically built by GitHub Actions on tag but are private by default. It has to be made public manually.

