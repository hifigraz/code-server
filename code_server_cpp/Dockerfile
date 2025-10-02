FROM hifigraz/code-server-base:latest
RUN echo ---- doing install && \ 
    apt-get update && \
    apt-get -y install clang && \
    apt-get -y install clangd && \
    apt-get -y install gdb && \
    apt-get -y install cmake && \
    apt-get -y install valgrind && \
    apt-get -y install libcriterion-dev && \
    apt-get -y remove gcc && \
    apt-get -y clean autoclean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log/ && \
    echo ---- doing config && \
    echo ALL DONE
