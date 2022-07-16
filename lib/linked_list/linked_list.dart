class Node<T> {
  Node({required this.value, this.next});

  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  /// Add a new element to the front of the list, also know as
  /// "Head-First Insertion"
  void push(E value) {
    final Node<E> newHead = Node(value: value, next: head);
    head = newHead;

    if (tail == null) tail = head;
  }

  /// Add a new element to the end of the list, also know as
  /// "Tail-End Insertion"
  void append(E value) {
    if (isEmpty) return push(value);

    final Node<E> newTail = Node(value: value);

    tail!.next = newTail;
    tail = tail!.next;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';

    return head.toString();
  }
}
