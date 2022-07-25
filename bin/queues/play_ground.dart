import '../../lib/queues/deque.dart';
import '../../lib/queues/queue_extention.dart';
import '../../lib/queues/queue_using_double_stack.dart';
import '../../lib/queues/queue_using_list.dart';
import '../../lib/queues/queue_using_single_linked_list.dart';

void main(List<String> args) {
  // final QueueUsingList<String> queue = QueueUsingList<String>();
  // final QueueUsingSingleLinkedList<String> queue =
  //     QueueUsingSingleLinkedList<String>();
  final QueueUsingDoubleStack<String> queue = QueueUsingDoubleStack<String>();

  queue.enqueue('Ray');
  queue.enqueue('Brian');
  queue.enqueue('Eric');

  print(queue);

  queue.dequeue();

  print(queue);

  print(queue.peek);

  print(queue);

  final QueueUsingSingleLinkedList<String> monopolyTurn =
      QueueUsingSingleLinkedList<String>();

  monopolyTurn.enqueue('Ray');
  monopolyTurn.enqueue('Vicki');
  monopolyTurn.enqueue('Luke');
  monopolyTurn.enqueue('Pablo');

  String? player;

  for (var i = 0; i < 20; i++) {
    player = monopolyTurn.nextPlayer();
    print('$player playing there moves..');
  }

  print('$player wins!!');


  final deque = DequeueUsingSingleLinkedList<int>();

  deque.enqueue(1, Direction.back);
  deque.enqueue(2, Direction.back);
  deque.enqueue(3, Direction.back);
  deque.enqueue(4, Direction.back);

  print(deque);

  deque.enqueue(5, Direction.front);

  print(deque);

  deque.dequeue(Direction.back);
  deque.dequeue(Direction.back);
  deque.dequeue(Direction.back);
  deque.dequeue(Direction.front);
  deque.dequeue(Direction.front);
  deque.dequeue(Direction.front);
  
  print(deque);
}
