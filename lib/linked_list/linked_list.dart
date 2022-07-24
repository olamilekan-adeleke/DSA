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
    tail = newTail;
  }

  /// Get a node by index
  Node<E>? nodeAt(int index) {
    Node<E>? currentNode = head;
    int currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex++;
    }

    return currentNode;
  }

  /// Insert a node after a given node
  Node<E> insertAfter(Node<E> node, E value) {
    if (node == tail) {
      append(value);
      return tail!;
    }

    final Node<E> newNode = Node(value: value, next: node.next);
    node.next = newNode;
    return newNode;
  }

  /// remove the first node on the list
  E? pop() {
    final E? value = head?.value;
    head = head?.next;

    if (isEmpty) tail = null;

    return value;
  }

  /// remove the last node on the list
  E? removeLast() {
    if (head?.next == null) return pop();

    Node<E>? currentNode = head;
    while (currentNode!.next != tail) {
      currentNode = currentNode.next;
    }

    final E? value = tail?.value;
    tail = currentNode;
    tail?.next = null;

    return value;
  }

  // remove a node after a given node
  E? removeAfter(Node<E> node) {
    final E? value = node.next?.value;

    if (node.next == tail) {
      tail = node;
    }

    node.next = node.next?.next;
    return value;
  }

  void removeAll(E value) {
    // first case if if the head value is equal to the value i want to remove
    while (head != null && head!.value == value) {
      head = head!.next;
    }

    // next we unlink nodes that have the value

    // Node<E>? current = head;
    // while (current?.next != null) {
    //   if (current?.next?.value == value) {
    //     current = current?.next?.next;
    //   }
    // }
    
    // tail = current;

    print('out');
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';

    return head.toString();
  }
}
