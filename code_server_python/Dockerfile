FROM hifigraz/code_server_base:latest
COPY ./files/bashrc /bashrc.python
RUN echo ---- doing install && \
    apt-get update && \
    apt-cache search python && \
    apt-get -y install python3 && \
    apt-get -y install python3-pip && \
    apt-get -y install python3-psycopg2 && \
    apt-get -y install python3-venv && \
    apt-get -y clean autoclean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log/ && \
    echo ---- doing config && \
    ln -sf /usr/bin/python3 /usr/bin/python && \
    ln -sf /usr/bin/pip3 /usr/bin/pip && \
    sudo -u abc echo . /bashrc.python >> ~/.bashrc && \
    sudo -u abc python -m venv --system-site-packages ~/venv/ && \ 
    sudo -u abc ~/venv/bin/pip install sqlalchemy && \
    sudo -u abc ~/venv/bin/pip install pydantic && \
    sudo -u abc ~/venv/bin/pip install fastapi && \
    sudo -u abc ~/venv/bin/pip install black && \
    sudo -u abc ~/venv/bin/pip install isort && \
    echo ALL DONE
