Code.require_file("hello_world.exs", __DIR__)

ExUnit.start()
ExUnit.configure(trace: true)

defmodule HelloWorldTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "Say Hello, World!" do
    assert capture_io(&HelloWorld.main/0) == "Hello, World!\n"
  end
end
