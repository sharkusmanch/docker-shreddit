FROM python:3.8-rc

RUN pip3 install -U shreddit && \
    # https://github.com/x89/Shreddit/issues/143
    pip3 install arrow==0.14.4 && \
    useradd -m shreddit && \
    mkdir -p /home/shreddit

WORKDIR /home/shreddit

USER shreddit

ENTRYPOINT [ "/usr/local/bin/shreddit" ]