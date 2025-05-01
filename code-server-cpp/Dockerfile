FROM lscr.io/linuxserver/code-server:latest
RUN apt-get update && \
    apt-get -y install clang && \
    apt-get -y install clangd && \
    apt-get -y install gdb && \
    apt-get -y install git && \
    apt-get -y install cmake && \
    apt-get -y install libcriterion-dev && \
    apt-get -y remove gcc && \
    apt-get -y clean autoclean && \
    apt-get -y autoremove && \
    ln -s /config/workspace /workspace && \
    rm -rf /var/lib/{apt,dpkg,cache,log/ && \
    echo ALL DONE
