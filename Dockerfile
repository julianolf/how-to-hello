FROM alpine:3.19

RUN apk \
	--repository "https://dl-cdn.alpinelinux.org/alpine/edge/testing" \
	--update-cache \
	add clang make dotnet7-sdk dart-sdk elixir go nodejs python3 ruby cargo

ENV CC=clang
ENV DOTNET_NOLOGO=true

WORKDIR /opt/hello

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
