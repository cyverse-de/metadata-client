FROM clojure
COPY . /usr/src/metadata-client
COPY ./docker/profiles.clj /root/.lein/profiles.clj
WORKDIR /usr/src/metadata-client
RUN lein deps
CMD ["lein", "test"]
