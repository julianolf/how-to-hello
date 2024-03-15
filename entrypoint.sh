#!/bin/sh

set -e

say_hello() {
	dir="${1%/}"
	lang="$(echo "$dir" | awk '{print toupper(substr($1, 1, 1)) tolower(substr($1, 2))}')"

	echo "Saying Hello in $lang"

	cd "$dir/"

	case "$dir" in
	c)
		make run
		;;
	csharp)
		dotnet run --project HelloWorld
		;;
	dart)
		dart run hello_world.dart
		;;
	elixir)
		elixir hello_world.exs
		;;
	fortran)
		make run
		;;
	go)
		go run hello_world.go
		;;
	javascript)
		node hello_world.js
		;;
	lua)
		lua5.4 hello_world.lua
		;;
	python)
		python hello_world.py
		;;
	ruby)
		ruby hello_world.rb
		;;
	rust)
		cargo run
		;;
	shell)
		. hello_world.sh
		;;
	esac

	cd - >/dev/null

	echo
}

for dir in */; do
	say_hello "$dir"
done
