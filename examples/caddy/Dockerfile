FROM ghcr.io/bikossor/modest-nexus:1.0.0 AS base

WORKDIR /app

COPY modest-nexus.yml .

RUN npm install

FROM base AS builder

RUN npm run build

FROM caddy:2.10.0-alpine

COPY --from=builder /app/dist /usr/share/caddy

COPY Caddyfile /etc/caddy/Caddyfile
