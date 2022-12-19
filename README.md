# Playit.gg Agent Docker Image

Learn more about [Playit.gg](https://playit.gg/) [here](https://playit.gg/about)

# Installation
```sh
docker run -d \
  --name playit \
  -e TZ=Europe/Bucharest \
  -v /YOUR/CONFIG/PATH:/config \
  ghcr.io/rursache/playit-agent-docker:latest
```
> **Note**
>
> Make sure to mount `/config` to a directory that contains your `config.toml`
>
> Please run the [GUI app](https://playit.gg/download) first to generate your `config.toml`

# Build
```sh
git clone https://github.com/rursache/playit-agent-docker
cd playit-agent-docker
docker build -t rursache/playit-agent-docker .
```
