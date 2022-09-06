import '../implementation/stack.dart';

/// Example: Reverse a List
/// Level: Easy
///
/// Create a function that prints the contents of a list in reverse order.
void printListInReverse<E>(List<E> list) {
  final Stack<E> stack = Stack<E>();

  for (E val in list) {
    stack.push(val);
  }

  while (stack.isEmpty != true) {
    print(stack.pop());
  }
}

void main() {
  final List<int> list = <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  printListInReverse(list);
}
