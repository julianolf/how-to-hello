FROM alpine:3.19

RUN apk add --no-cache clang make dotnet7-sdk

ENV CC=clang
ENV DOTNET_NOLOGO=true

WORKDIR /opt/hello

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
