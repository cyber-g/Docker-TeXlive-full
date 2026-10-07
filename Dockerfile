FROM alpine:3.24

RUN apk add --no-cache make texlive-full

WORKDIR /work
CMD ["sh"]
