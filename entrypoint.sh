#!/bin/sh

set -e

echo "Saying Hello in C"
cd c/ && make run && cd - >/dev/null && echo

echo "Saying Hello in C#"
cd csharp/ && dotnet run --project HelloWorld && cd - >/dev/null && echo
