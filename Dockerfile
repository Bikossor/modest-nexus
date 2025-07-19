FROM node:22.17.1-alpine

LABEL org.opencontainers.image.title=modest-nexus
LABEL org.opencontainers.image.version=v1.1.0
LABEL org.opencontainers.image.description="Small and lightweight self-hostable nexus"
LABEL org.opencontainers.image.url=https://github.com/Bikossor/modest-nexus
LABEL org.opencontainers.image.documentation=https://github.com/Bikossor/modest-nexus
LABEL org.opencontainers.image.vendor="Bikossor"
LABEL org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.source="https://github.com/Bikossor/modest-nexus"

WORKDIR /app

COPY . .
