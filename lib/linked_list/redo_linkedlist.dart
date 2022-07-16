class _Node<T> {
  _Node({required this.value, this.next});

  T value;
  _Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';

    return '$value -> ${next.toString()}';
  }
}



void main(List<String> args) {
  final node1 = _Node(value: 1);
  final node2 = _Node(value: 2);
  final node3 = _Node(value: 3);
  final node4 = _Node(value: 4);
  final node5 = _Node(value: 5);
  final node6 = _Node(value: 6);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;
  node5.next = node6;

  print(node1);
}
