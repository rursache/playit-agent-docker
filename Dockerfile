FROM ubuntu:latest

RUN apt update && apt install curl -y

RUN curl -o playit -L "https://github.com/playit-cloud/playit-agent/releases/download/v0.10.0-rc2/playit-linux-amd64"
RUN chmod +x playit

RUN mkdir config

VOLUME /config

CMD ["./playit", "--config-file", "/config/config.toml"]
