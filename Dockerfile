FROM --platform=$BUILDPLATFORM nginx:stable-alpine AS builder

COPY index.html /usr/share/nginx/html/

FROM --platform=$TARGETPLATFORM nginx:stable-alpine

COPY --from=builder /usr/share/nginx/html /usr/share/nginx/html

LABEL maintainer="Coder's Garage Project"
LABEL description="A simple nginx hello world page"
LABEL org.opencontainers.image.source="https://github.com/codersgarage/hello-world-nginx"
