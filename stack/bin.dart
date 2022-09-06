import 'implementation/stack.dart';

void main(List<String> args) {
  final Stack<String> stack = Stack<String>();

  stack.push('I');
  stack.push('J');
  stack.push('O');
  stack.push('M');
  stack.push('E');

  print(stack.toString());

  final String? lastAddedString = stack.pop();
  print('String Popped: $lastAddedString');

  print(stack.toString());
}
