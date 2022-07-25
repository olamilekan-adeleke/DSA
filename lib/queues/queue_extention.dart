import 'queue_using_single_linked_list.dart';

extension BoardGameManger<E> on QueueUsingSingleLinkedList<E> {
  E? nextPlayer() {
    final E? player = this.dequeue();

    if (player != null) this.enqueue(player);

    return player;
  }
}
