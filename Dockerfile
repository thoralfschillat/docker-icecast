FROM alpine:latest

LABEL org.opencontainers.image.authors="Thoralf Schillat" \
      org.opencontainers.image.source="https://github.com/thoralfschillat/docker-icecast"

RUN apk add --no-cache mailcap icecast

USER icecast

ENTRYPOINT ["icecast"]

CMD ["-c", "/etc/icecast.xml"]
