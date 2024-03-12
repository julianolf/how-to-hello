FROM dart:stable

WORKDIR /opt/hello

COPY . .

RUN dart pub get

CMD ["dart", "test"]
