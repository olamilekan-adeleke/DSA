import '../linked_list/linked_list.dart';

enum Direction { front, back }

abstract class Dequeue<E> {
  bool get isEmpty;

  E? peek(Direction to);

  bool enqueue(E element, Direction to);

  E? dequeue(Direction to);
}

class DequeueUsingSingleLinkedList<E> implements Dequeue<E> {
  final LinkedList<E> _list = LinkedList<E>();

  @override
  E? dequeue(Direction to) {
    if (to == Direction.front) {
      return _list.pop();
    } else {
      return _list.removeLast();
    }
  }

  @override
  bool enqueue(E element, Direction to) {
    if (to == Direction.front) {
      _list.push(element);
    } else {
      _list.append(element);
    }

    return true;
  }

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? peek(Direction to) {
    if (to == Direction.front) {
      return _list.head?.value;
    } else {
      return _list.tail?.value;
    }
  }

  @override
  String toString() => _list.toString();
}
