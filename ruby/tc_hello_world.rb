require_relative "hello_world"
require "test/unit"

class TestHelloWorld < Test::Unit::TestCase
    def test_main
        expected = "Hello, World!\n"
        stdout, stderr = capture_output do
            main
        end
        assert_equal(stdout, expected)
    end
end
