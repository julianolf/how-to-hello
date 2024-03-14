FROM alpine:3.19

RUN apk add --no-cache bash

WORKDIR /opt/hello

COPY . .

CMD ["./vendor/bats/bin/bats", "test_hello_world.sh"]
