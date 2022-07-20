void main(List<String> args) {
  // final node1 = _Node(value: 1);
  // final node2 = _Node(value: 2);
  // final node3 = _Node(value: 3);
  // final node4 = _Node(value: 4);
  // final node5 = _Node(value: 5);
  // final node6 = _Node(value: 6);

  // node1.next = node2;
  // node2.next = node3;
  // node3.next = node4;
  // node4.next = node5;
  // node5.next = node6;

  // print(node1);

  final _LinkedList<int> linkedList = _LinkedList<int>();

  linkedList.push(3);
  linkedList.push(2);
  linkedList.push(1);

  linkedList.append(4);
  linkedList.append(5);
  linkedList.append(6);

  linkedList.push(0);

  print(linkedList);
}

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

class _LinkedList<E> {
  _Node<E>? head;
  _Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value) {
    final _Node<E> newHead = _Node<E>(value: value, next: head);
    head = newHead;

    if (tail == null) tail = head;
  }

  void append(E value) {
    if (isEmpty) push(value);

    final _Node<E> newTail = _Node(value: value);

    tail!.next = newTail;
    tail = tail!.next;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';

    return head.toString();
  }
}
