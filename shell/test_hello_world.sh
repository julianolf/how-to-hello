#!/usr/bin/env bash

@test "Say Hello, World!" {
  run bash hello_world.sh

  [ "$status" -eq 0 ]
  [ "$output" = "Hello, World!" ]
}
