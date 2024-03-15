#!/bin/sh

set -e

echo "Saying Hello in C"
cd c/ && make run && cd - >/dev/null && echo

echo "Saying Hello in C#"
cd csharp/ && dotnet run --project HelloWorld && cd - >/dev/null && echo

echo "Saying Hello in Dart"
cd dart/ && dart run hello_world.dart && cd - >/dev/null && echo
