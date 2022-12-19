FROM ubuntu:latest

RUN apt update && apt install curl -y

RUN curl -o playit -L "https://github.com/playit-cloud/playit-agent/releases/download/v0.9.3/playit-0.9.3"
RUN chmod +x playit

RUN mkdir config

VOLUME /config

CMD ["./playit", "--config-file", "/config/config.toml"]
