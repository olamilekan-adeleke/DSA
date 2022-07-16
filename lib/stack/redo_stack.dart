// class _Stack<E> {
//   _Stack() : _storage = <E>[];

//   final List<E> _storage;

//   bool get isEmpty => _storage.isEmpty;

//   E? get peek => isEmpty ? null : _storage.last;

//   void push(E element) => _storage.add(element);

//   E? pop() {
//     if (_storage.isEmpty) return null;

//     return _storage.removeLast();
//   }

//   @override
//   String toString() {
//     return '---- Top ----\n'
//         '${_storage.reversed.join('\n')}'
//         '\n-------------';
//   }
// }

// void main(List<String> args) {
//   final _Stack<String> stack = _Stack<String>();

//   stack.push('Ola');
//   stack.push('Yetunde');
//   stack.push('Sofurat');
//   stack.push('Emoji');
//   stack.push('Fahtima');

//   print(stack.toString());

//   print('\nPopping item.....\n');

//   stack.pop();

//   print(stack.toString());
// }
