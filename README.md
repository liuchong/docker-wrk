# docker-wrk

[Github](https://github.com/liuchong/docker-wrk)

[Docker](https://hub.docker.com/r/liuchong/wrk)

## Usage

### build your own

```
docker build -t liuchong/wrk:4.2.0 .
# or
docker build --platform linux/amd64 -t liuchong/wrk:4.2.0 .
```

### run pre-build

```
docker run --rm liuchong/wrk
docker run --rm liuchong/wrk -t12 -c400 -d30s http://127.0.0.1:8080/index.html
```

## License

[MIT](LICENSE)
