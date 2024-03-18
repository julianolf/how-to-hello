#!/bin/sh

set -e

say_hello() {
	dir="${1%/}"
	lang="$(echo "$dir" | awk '{print toupper(substr($1, 1, 1)) tolower(substr($1, 2))}')"

	echo "Saying Hello in $lang"

	cd "$dir/"

	case "$dir" in
	csharp)
		dotnet run
		;;
	dart)
		dart run hello_world.dart
		;;
	elixir)
		elixir hello_world.exs
		;;
	gleam)
		gleam run
		;;
	go)
		go run .
		;;
	javascript)
		node hello_world.js
		;;
	lua)
		lua5.4 hello_world.lua
		;;
	perl)
		perl hello_world.pl
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
	zig)
		zig build run
		;;
	*)
		make run
		;;
	esac

	cd - >/dev/null

	echo
}

for dir in */; do
	say_hello "$dir"
done
