FROM harshpreets63/random:simple

WORKDIR /usr/src/app
COPY . .
RUN apt-get autoclean && apt-get autoremove && apt-get clean
RUN set -ex \
    && chmod 777 /usr/src/app \ 
    && cp .netrc /root/.netrc \
    && chmod 600 /usr/src/app/.netrc \
    && cp extract pextract /usr/local/bin \
    && chmod +x aria.sh /usr/local/bin/extract /usr/local/bin/pextract
RUN pip3 install -U pyrogram==1.4.16 && pip3 install https://github.com/ArghyadipBiswas/ymp_dmlp/archive/refs/heads/master.zip
CMD ["bash", "start.sh"]
