FROM alpine:3.19

RUN apk \
	--repository "https://dl-cdn.alpinelinux.org/alpine/edge/testing" \
	--update-cache \
	add gcc gfortran make dotnet7-sdk dart-sdk elixir go nodejs python3 ruby cargo lua5.4

ENV CC=gcc
ENV FC=gfortran
ENV DOTNET_NOLOGO=true

WORKDIR /opt/hello

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
