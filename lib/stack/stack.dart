class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  /// returns true is stack is empty, else returns false.
  /// constant time complexity of "O(1)"
  bool get isEmpty => _storage.isEmpty;

  /// return the top item on the stack if stack is not empty, else return null
  /// constant time complexity of "O(1)"
  E? get peek => isEmpty ? null : _storage.last;

  /// adds an element to the top of the Stack
  /// constant time complexity of "O(1)" (sort of, coz it depends on how the
  /// language you are using implement list. But it is usually of constant time)
  void push(E element) => _storage.add(element);

  /// pop an element to the top of the Stack
  /// constant time complexity of "O(1)"
  E? pop() => isEmpty ? null : _storage.removeLast();

  @override
  String toString() {
    return '---- Top ----\n'
        '${_storage.reversed.join('\n')}'
        '\n-------------';
  }
}

void main(List<String> args) {
  final Stack<String> stack = Stack<String>();

  stack.push('Ola');
  stack.push('Yetunde');
  stack.push('Sofurat');
  stack.push('Emoji');
  stack.push('Fahtima');

  print(stack.toString());

  print('\nPopping item.....\n');

  stack.pop();

  print(stack.toString());
}
