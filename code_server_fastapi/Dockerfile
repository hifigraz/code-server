FROM hifigraz/code-server-python:latest
RUN echo ---- doing install && \
    echo INTO:  apt-get update && \
    echo INTO:  apt-get -y some packages && \
    echo INTO:  apt-get -y clean autoclean && \
    echo INTO:  apt-get -y autoremove && \
    echo INTO:  rm -rf /var/lib/{apt,dpkg,cache,log/ && \
    echo ---- doing config && \
    echo ALL DONE
