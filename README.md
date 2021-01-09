# Compile latex in a container

1. run the `compileLatex` script of the repo in the directory of the latex files that should be compiled to start the container and mount the current directory (make file executable and add repo dir to path)
2. in the shell of the container go into the `/app` directory
3. with `compileLatex <filename>` the .tex file with that name will be compiled
4. the pdf and all output files will be in the directory of your machine next to the .tex file

