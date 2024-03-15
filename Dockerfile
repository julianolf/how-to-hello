FROM alpine:edge

RUN apk add \
	--repository "https://dl-cdn.alpinelinux.org/alpine/edge/testing" \
	--no-cache \
	gcc gfortran make dotnet8-sdk dart-sdk elixir go nodejs python3 ruby cargo lua5.4

ENV CC=gcc
ENV FC=gfortran
ENV DOTNET_NOLOGO=true

WORKDIR /opt/hello

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
