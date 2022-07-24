import '../../lib/queues/queue_using_list.dart';

void main(List<String> args) {
  final QueueUsingList<String> queue = QueueUsingList<String>();

  queue.enqueue('Ray');
  queue.enqueue('Brian');
  queue.enqueue('Eric');

  print(queue);

  queue.dequeue();

  print(queue);

  print(queue.peek);

  print(queue);
}
