# Docker 使用说明

## 镜像仓库

- Docker Hub: `songguangzhi/clash-for-docker`

## 快速启动

```bash
docker run -d \
  --name clash \
  -p 7890:7890 \
  -p 9090:9090 \
  -p 1053:1053/tcp \
  -p 1053:1053/udp \
  -e CLASH_CONFIG_URL="你的订阅链接" \
  -e CLASH_SECRET="your-secret" \
  -e CLASH_AUTH="username:password" \
  -v clash-data:/opt/clashctl/resources \
  songguangzhi/clash-for-docker:latest
```

## 端口说明

- `7890/tcp`: 代理端口（`mixed-port`，HTTP/SOCKS5 通用）
- `9090/tcp`: Web UI / External Controller 端口
- `1053/tcp` + `1053/udp`: 内置 DNS 端口

Web UI 访问地址：

- `http://<宿主机IP>:9090/ui`

## 常用环境变量

- `CLASH_CONFIG_URL`: 订阅地址（容器启动时自动拉取）
- `CLASH_SECRET`: Web UI/API 密钥
- `CLASH_AUTH`: 代理认证，格式 `username:password`
- `CLASH_ALLOW_LAN`: 是否允许局域网访问，默认 `true`
- `CLASH_MIXED_PORT`: 自定义代理端口，默认 `7890`
- `CLASH_DASHBOARD_PORT`: 自定义 UI 端口，默认 `9090`

## 自定义端口示例

下面示例把代理端口改为 `17890`，UI 端口改为 `19090`：

```bash
docker run -d \
  --name clash \
  -p 17890:17890 \
  -p 19090:19090 \
  -p 1053:1053/tcp \
  -p 1053:1053/udp \
  -e CLASH_MIXED_PORT=17890 \
  -e CLASH_DASHBOARD_PORT=19090 \
  -e CLASH_CONFIG_URL="你的订阅链接" \
  -v clash-data:/opt/clashctl/resources \
  songguangzhi/clash-for-docker:latest
```
