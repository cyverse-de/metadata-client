FROM clojure
COPY ./docker/profiles.clj /root/.lein/profiles.clj
WORKDIR /usr/src/metadata-client

COPY project.clj /usr/src/metadata-client/
RUN lein deps

COPY . /usr/src/metadata-client
CMD ["lein", "test"]
