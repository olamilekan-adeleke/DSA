import '../linked_list/linked_list.dart';
import 'queues.dart';

class QueueUsingSingleLinkedList<E> implements Queue<E> {
  final LinkedList<E> _list = LinkedList<E>();

  @override
  E? dequeue() => _list.pop();

  @override
  bool enqueue(E element) {
    _list.append(element);
    return true;
  }

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? get peek => _list.head?.value;

  @override
  String toString() => _list.toString();
}
