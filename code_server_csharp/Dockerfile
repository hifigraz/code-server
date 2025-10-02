FROM hifigraz/code-server-base:latest
COPY ./files/bashrc /bashrc.dotnet
RUN echo ---- doing install && \
    apt-get update && \
    apt-cache search dotnet && \
    apt-get -y install dotnet8 && \
    apt-get -y install dotnet-sdk-8.0 && \
    apt-get -y clean autoclean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log/ && \
    echo ---- doing config && \
    sudo -u abc echo . /bashrc.dotnet >> ~/.bashrc && \
    echo ALL DONE
