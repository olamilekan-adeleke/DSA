import 'queues.dart';

class QueueUsingList<E> implements Queue<E> {
  final List<E> _list = <E>[];
  @override
  E? dequeue() {
    if (isEmpty) return null;
    return _list.removeAt(0);
  }

  @override
  bool enqueue(E element) {
    _list.add(element);
    return true;
  }

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? get peek => isEmpty ? null : _list.first;

  @override
  String toString() => _list.toString();
}
