FROM lscr.io/linuxserver/code-server:latest
LABEL maintainer="rulmer@lr.htlweiz.at"
LABEL version="0.1"
RUN echo ---- doing install && \
    apt-get update && \
    apt-get -y install git && \
    apt-get -y clean autoclean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log/ && \
    echo ---- doing config && \
    ln -s /config/workspace /workspace && \
    chown -R abc:abc ~abc && \
    sudo -u abc git config --global user.email foobar@sr.htlweiz.at && \
    sudo -u abc git config --global user.name Student && \
    sudo -u abc git config --global pull.rebase false && \
    echo --- ALL DONE
