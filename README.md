# Compile latex in a container

run `sudo podman run -v ./:/app/ -it latex-base /bin/bash` to mount directory of files that should be compiled, then execute the `./compileLatex.sh` script.
