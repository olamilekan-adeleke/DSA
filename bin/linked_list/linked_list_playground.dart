import '../../lib/linked_list/linked_list.dart';

void main(List<String> args) {
  // final node1 = Node(value: 1);
  // final node2 = Node(value: 2);
  // final node3 = Node(value: 3);
  // final node4 = Node(value: 4);
  // final node5 = Node(value: 5);
  // final node6 = Node(value: 6);

  // node1.next = node2;
  // node2.next = node3;
  // node3.next = node4;
  // node4.next = node5;
  // node5.next = node6;

  // print(node1);

  final LinkedList<int> linkedList = LinkedList<int>();

  linkedList.push(3);
  linkedList.push(3);
  linkedList.push(3);
  linkedList.push(3);
  linkedList.push(3);
  linkedList.push(2);
  linkedList.push(1);
  linkedList.push(0);
  linkedList.push(3);
  linkedList.push(3);

  linkedList.append(5);
  linkedList.append(6);

  print(linkedList);

  // Node<int>? node = linkedList.nodeAt(2);
  // print(node?.value ?? 'Not Found!');
  // linkedList.insertAfter(node!, 4);

  // Node<int>? node2 = linkedList.nodeAt(3);
  // print(node2?.value ?? 'Not Found!');
  // linkedList.insertAfter(node2!, 42);

  // print(linkedList);

  // print('Popped Value: ${linkedList.pop()}');

  // print(linkedList);

  // print('Remove Last Value: ${linkedList.removeLast()}');

  // print(linkedList);

  // print('Remove Last At index: 3 Value: ${linkedList.removeAfter(node2)}');

  // print(linkedList);

  // printListInReserve(linkedList.head);

  // print('Middle Node: ${getMiddle(linkedList)?.value}');

  linkedList.removeAll(3);

  print(linkedList);
}

/// Create a function that prints the nodes of a linked list in reverse order. For example:
/// 1 -> 2 -> 3 -> null
/// should print out the following:
/// 3
/// 2
/// 1
void printListInReserve<T>(Node<T>? node) {
  if (node == null) return;

  printListInReserve(node.next);

  print(node.value);
}

//? Create a function that finds the middle node of a linked list.
//? 1 -> 2 -> 3 -> 4 -> null
//? middle is 3
//? 1 -> 2 -> 3 -> null
//? middle is 2
Node<E>? getMiddle<E>(LinkedList<E> list) {
  Node<E>? slow = list.head;
  Node<E>? fast = list.head;

  while (fast?.next != null) {
    slow = slow?.next;
    fast = fast?.next?.next;
  }

  return slow;
}
