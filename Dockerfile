FROM schoolofdevops/facebooc

WORKDIR /opt/facebooc

COPY . .

EXPOSE 16000

RUN apt-get update && \
    apt-get install -yq build-essential make libsqlite-dev sqlite3 && \
    make all

CMD bin/facebooc
