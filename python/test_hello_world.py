import io
from unittest import mock, TestCase

import hello_world


class HelloWorldTest(TestCase):
    def test_main(self):
        with mock.patch("sys.stdout", new_callable=io.StringIO) as stdout:
            expected = "Hello, World!\n"
            hello_world.main()
            self.assertEqual(stdout.getvalue(), expected)


if __name__ == "__main__":
    unittest.main()
