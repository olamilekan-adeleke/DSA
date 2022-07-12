import '../../lib/stack/stack.dart';

void main(List<String> args) {
  printListInReverse(['d', 'r', 'a', 'w', 'e', 'r']);

  //
  print(
    'Is "h((e))llo(world)()" balanced ${checkParentheses('h((e))llo(world)()')}',
  );
  print(
    'Is "(hello world)(" balanced ${checkParentheses('(hello world)(')}',
  );
}

void printListInReverse<E>(List<E> list) {
  final Stack<E> stack = Stack<E>();

  for (E value in list) {
    stack.push(value);
  }

  print(stack.toString());

  while (!stack.isEmpty) {
    print(stack.pop());
  }
}

bool checkParentheses(String text) {
  final Stack stack = Stack();

  final String open = '(';
  final String close = ')';

  for (String val in text.split('')) {
    if (val == open) {
      stack.push(val);
    } else if (val == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }

  return stack.isEmpty;
}
