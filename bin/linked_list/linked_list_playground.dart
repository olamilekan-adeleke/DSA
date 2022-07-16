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

  // linkedList.push(3);
  // linkedList.push(2);
  // linkedList.push(1);

  linkedList.append(1);
  linkedList.append(2);
  linkedList.append(3);

  print(linkedList);
}
