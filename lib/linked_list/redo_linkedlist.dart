// redo

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

  print(linkedList);

  linkedList.push(3);
  linkedList.push(2);
  linkedList.push(1);
  linkedList.push(0);

  linkedList.append(5);
  linkedList.append(6);

  print(linkedList);

  _Node<int>? node = linkedList.nodeAt(3);
  print(node?.value ?? 'Not Found!');
  linkedList.insertAfter(node!, 4);

  _Node<int>? node2 = linkedList.nodeAt(4);
  print(node2?.value ?? 'Not Found!');
  linkedList.insertAfter(node2!, 42);

  print(linkedList);

  print('Popped Value: ${linkedList.pop()}');

  print(linkedList);

  print('Remove Last Value: ${linkedList.removeLast()}');

  print(linkedList);

  print('Remove Last At index: 3 Value: ${linkedList.removeAfter(node2)}');

  print(linkedList);
}

//! push, append, nodeAt, insertAfter, pop, removeLst, removeAfter

class _Node<T> {
  _Node({required this.value, this.next});

  final T value;
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
    final _Node<E> newHead = _Node(value: value, next: head);
    head = newHead;

    if (tail == null) tail = head;
  }

  void append(E value) {
    if (isEmpty) return push(value);

    final _Node<E> newTail = _Node(value: value);

    tail!.next = newTail;
    tail = newTail;
  }

  _Node<E>? nodeAt(int index) {
    _Node<E>? currentNode = head;
    int currentIndex = 0;

    while (currentNode?.next != null && currentIndex < index) {
      currentNode = currentNode?.next;
      currentIndex++;
    }

    return currentNode;
  }

  void insertAfter(_Node<E> node, E value) {
    if (head?.next == null) return append(value);

    final _Node<E> newNodeNext = _Node(value: value, next: node.next);
    node.next = newNodeNext;
  }

  E? pop() {
    final E? value = head?.value;
    head = head?.next;

    if (head == null) tail = null;

    return value;
  }

  E? removeLast() {
    if (head?.next == null) return pop();

    _Node<E>? currentNode = head;
    while (currentNode!.next != tail) {
      currentNode = currentNode.next;
    }

    final E? value = tail?.value;
    tail = currentNode;
    tail?.next = null;

    return value;
  }

  E? removeAfter(_Node<E> node) {
    final E? value = node.next?.value;

    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return head.toString();
  }
}
