@TestOn('vm')

import 'package:test/test.dart';
import 'package:test_process/test_process.dart';

void main() {
  test('Say Hello, World!', () async {
    var process = await TestProcess.start('dart', ['bin/hello_world.dart']);
    await expectLater(process.stdout, emits('Hello, World!'));
    await process.shouldExit(0);
  });
}
