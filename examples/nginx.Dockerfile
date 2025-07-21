FROM ghcr.io/bikossor/modest-nexus:1.1.0 AS base

WORKDIR /app

COPY modest-nexus.yml .

RUN npm install

FROM base AS builder

RUN npm run build

FROM nginx:1.29.0-alpine

COPY --from=builder /app/dist /usr/share/nginx/html
