FROM alpine:3.19

RUN apk add --no-cache bats

WORKDIR /opt/hello

COPY . .

CMD ["bats", "test_hello_world.sh"]
