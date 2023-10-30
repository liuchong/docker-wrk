FROM debian:12.2 as build
RUN apt-get update && apt-get install build-essential git zip -y

WORKDIR /build
RUN git clone --depth 1 --branch 4.2.0 https://github.com/wg/wrk
RUN cd wrk && make

FROM debian:12.2-slim
RUN apt-get update && apt-get install netbase -y && rm -rf /var/lib/apt/lists/*
COPY --from=build /build/wrk/wrk /usr/local/bin/
ENTRYPOINT ["wrk"]
CMD ["--help"]
