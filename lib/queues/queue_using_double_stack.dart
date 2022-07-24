import 'queues.dart';

class QueueUsingDoubleStack<E> implements Queue<E> {
  final List<E> _enqueuingList = <E>[];
  final List<E> _dequeuingList = <E>[];

  @override
  E? dequeue() {
    if (_dequeuingList.isEmpty) {
      _dequeuingList.addAll(_enqueuingList.reversed);

      _enqueuingList.clear();
    }

    if (_dequeuingList.isEmpty) return null;

    return _dequeuingList.removeLast();
  }

  @override
  bool enqueue(E element) {
    _enqueuingList.add(element);
    return true;
  }

  @override
  bool get isEmpty => _enqueuingList.isEmpty && _dequeuingList.isEmpty;

  @override
  E? get peek {
    if (_dequeuingList.isNotEmpty) {
      return _dequeuingList.last;
    } else {
      return _enqueuingList.first;
    }
  }

  @override
  String toString() {
    return [
      ..._dequeuingList.reversed,
      ..._enqueuingList,
    ].join(', ').toString();
  }
}
