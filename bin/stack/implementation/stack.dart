class Stack<E> {
  Stack() : _storage = [];
  final List<E> _storage;

  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => _storage.isNotEmpty;
  E? get peek => _storage.last;

  void push(E value) => _storage.add(value);

  E? pop() {
    if (isEmpty) return null;

    return _storage.removeLast();
  }

  @override
  String toString() {
    return '----------\n${_storage.reversed.join('\n')}\n----------';
  }
}
