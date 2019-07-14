const hello_world = require('./hello_world');

global.console = {log: jest.fn()};

test('Say Hello, World!', () => {
  const expected = 'Hello, World!';
  hello_world();
  expect(console.log).toBeCalledWith(expected);
});
