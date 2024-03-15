#!/bin/sh

set -e

echo "Saying Hello in C"
cd c/ && make run && cd - >/dev/null && echo

echo "Saying Hello in C#"
cd csharp/ && dotnet run --project HelloWorld && cd - >/dev/null && echo

echo "Saying Hello in Dart"
cd dart/ && dart run hello_world.dart && cd - >/dev/null && echo

echo "Saying Hello in Elixir"
cd elixir/ && elixir hello_world.exs && cd - >/dev/null && echo

echo "Saying Hello in Go"
cd go/ && go run hello_world.go && cd - >/dev/null && echo

echo "Saying Hello in JavaScript"
cd javascript/ && node hello_world.js && cd - >/dev/null && echo
