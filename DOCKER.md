# Docker 启动使用说明

本文档重点说明如何用 Docker / Docker Compose 启动并使用镜像。

## 镜像地址

- Aliyun Registry: `registry.cn-hangzhou.aliyuncs.com/dato/clash-for-docker`

## 1. 拉取镜像

```bash
docker pull registry.cn-hangzhou.aliyuncs.com/dato/clash-for-docker:latest
```

- 多架构已支持：`linux/amd64`、`linux/arm64`
- 一般无需手动指定架构，Docker 会自动选择

## 2. docker run 启动（最小可用）

```bash
docker run -d \
  --name clash \
  --restart unless-stopped \
  -p 7890:7890 \
  -p 9090:9090 \
  -p 1053:1053/tcp \
  -p 1053:1053/udp \
  -e CLASH_CONFIG_URL="你的订阅链接" \
  -v clash-data:/opt/clashctl/resources \
  registry.cn-hangzhou.aliyuncs.com/dato/clash-for-docker:latest
```

启动后：

- 代理端口：`7890`
- Web UI：`http://<宿主机IP>:9090/ui`

## 3. docker-compose 启动（推荐）

项目已提供 [docker-compose.yml](docker-compose.yml)。

### 3.1 直接启动

```bash
docker compose up -d
```

### 3.2 指定订阅和认证后启动

Linux / macOS：

```bash
export CLASH_CONFIG_URL="你的订阅链接"
export CLASH_AUTH="username:password"
export CLASH_SECRET="your-secret"
docker compose up -d
```

Windows PowerShell：

```powershell
$env:CLASH_CONFIG_URL="你的订阅链接"
$env:CLASH_AUTH="username:password"
$env:CLASH_SECRET="your-secret"
docker compose up -d
```

### 3.3 自定义端口

```bash
export CLASH_MIXED_PORT=17890
export CLASH_DASHBOARD_PORT=19090
docker compose up -d
```

Web UI 访问：`http://<宿主机IP>:19090/ui`

### 3.4 常用管理命令

```bash
docker compose ps
docker compose logs -f
docker compose restart
docker compose down
```

## 4. 端口用途说明

- `7890/tcp`：代理端口（`mixed-port`，HTTP/SOCKS5）
- `9090/tcp`：Web UI / External Controller
- `1053/tcp` + `1053/udp`：内置 DNS

## 5. 常用环境变量

- `CLASH_CONFIG_URL`：订阅地址（建议必填）
- `CLASH_AUTH`：代理认证，格式 `username:password`
- `CLASH_SECRET`：Web UI/API 密钥
- `CLASH_ALLOW_LAN`：是否允许局域网访问，默认 `true`
- `CLASH_MIXED_PORT`：代理端口，默认 `7890`
- `CLASH_DASHBOARD_PORT`：UI 端口，默认 `9090`

## 6. 启动后检查

```bash
docker ps
docker logs -f clash
```

如果需要更新订阅或变更配置，修改环境变量后重建容器即可。
