# Playit.gg Agent Docker Image

⚠️ No longer maintained as I switched to the [official server plugin](https://playit.gg/download/plugins) ⚠️

Learn more about [Playit.gg](https://playit.gg/) [here](https://playit.gg/about)

# Installation
```sh
docker run -d \
  --name playit \
  --restart unless-stopped \
  -e TZ=Europe/Bucharest \
  -v /YOUR/CONFIG/PATH:/config \
  ghcr.io/rursache/playit-agent-docker:latest
```
> **Note**
>
> Make sure to mount `/config` to a directory that contains your `config.toml`
>
> Please run the [GUI app](https://playit.gg/download) first to generate your `config.toml`

### config.toml example

> **Warning**
>
> Do **NOT** use this, generate your own! This is just for you to get an idea of how the file and syntax looks

```toml
last_update = 1671539662527
api_url = "https://api.playit.cloud/agent"
ping_target_addresses = ["23.133.216.1:5530", "ping.playit.gg"]
control_address = "control.ply.gg"
refresh_from_api = true
api_refresh_rate = 5000
ping_interval = 5000
secret_key = "secret aka ID (developer)"

[[mappings]]
name = "whatever name"
proto = "tcp OR udp"
tunnel_ip = "playit ip"
tunnel_from_port = 1234 #playit port
local_ip = "your local ip"
local_port = 1234 #your port

```

# Build
```sh
git clone https://github.com/rursache/playit-agent-docker
cd playit-agent-docker
docker build -t rursache/playit-agent-docker .
```

# License
This repo is available under the MPL-2.0 license. See the [LICENSE](https://github.com/rursache/playit-agent-docker/blob/master/LICENSE) file for more info.
