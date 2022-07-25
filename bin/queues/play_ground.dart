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
}
