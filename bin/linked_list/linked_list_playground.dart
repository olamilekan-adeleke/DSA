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
  linkedList.push(2);
  linkedList.push(1);
  linkedList.push(0);

  linkedList.append(5);
  linkedList.append(6);

  print(linkedList);

  Node<int>? node = linkedList.nodeAt(2);
  print(node?.value ?? 'Not Found!');
  linkedList.insertAfter(node!, 4);

  Node<int>? node2 = linkedList.nodeAt(3);
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
