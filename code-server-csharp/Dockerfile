FROM lscr.io/linuxserver/code-server:latest
COPY ./files/bashrc /bashrc.dotnet
RUN apt-get update && \
    apt-cache search dotnet && \
    apt-get -y install dotnet8 && \
    apt-get -y install dotnet-sdk-8.0 && \
    apt-get -y install git && \
    apt-get -y clean autoclean && \
    apt-get -y autoremove && \
    ln -s /config/workspace /workspace && \
    rm -rf /var/lib/{apt,dpkg,cache,log/ && \
    chown -R abc:abc ~abc && \
    sudo -u abc echo . /bashrc.dotnet >> ~/.bashrc && \
    sudo -u abc git config --global user.email foobar@sr.htlweiz.at && \
    sudo -u abc git config --global user.name Student && \
    echo ALL DONE
