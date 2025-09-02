FROM ghcr.io/bikossor/modest-nexus:1.2.0 AS base

WORKDIR /app

COPY modest-nexus.yml .

RUN npm install

FROM base AS builder

RUN npm run build

FROM httpd:2.4.64-alpine

COPY --from=builder /app/dist /usr/local/apache2/htdocs
