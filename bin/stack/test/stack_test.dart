import 'package:test/test.dart';

import '../implementation/stack.dart';

void main() {
  group('Stack Test', () {
    late Stack<String> stackUnderTest;

    setUpAll(() => stackUnderTest = Stack<String>());

    tearDownAll(() => stackUnderTest = Stack<String>());

    test('Test Stack Push Method Works', () {
      stackUnderTest.push('Test');

      expect(stackUnderTest.peek, 'Test');
    });

    test('Test Stack Pop Method Works', () {
      stackUnderTest.push('One');
      stackUnderTest.push('Two');

      final String? poppedString = stackUnderTest.pop();
      expect(poppedString, 'Two');
    });

    test('Test Stack Peek Method Works', () {
      stackUnderTest.push('One');

      expect(stackUnderTest.peek, 'One');
    });

    test('Test Stack IsEmpty On Init', () {
      stackUnderTest = Stack<String>();
      expect(stackUnderTest.isEmpty, true);
    });

    test('Test Stack Continues Pop calls', () {
      stackUnderTest.push('One');
      stackUnderTest.push('Two');

      expect(stackUnderTest.pop(), 'Two');

      stackUnderTest.pop();
      expect(stackUnderTest.pop(), null);

      stackUnderTest.pop();
      expect(stackUnderTest.pop(), null);
    });
  });
}
