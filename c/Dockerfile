FROM alpine:3.19

RUN apk add --no-cache clang make

ENV CC=clang

WORKDIR /opt/hello

COPY . .

CMD ["make", "test"]
