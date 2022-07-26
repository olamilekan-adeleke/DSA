import '../queues/queue_using_double_stack.dart';

class TreeNode<T> {
  TreeNode(this.value);

  final T value;
  List<TreeNode<T>> _children = <TreeNode<T>>[];
  List<TreeNode<T>> get children => _children;

  void add(TreeNode<T> node) {
    _children.add(node);
  }

  void forEachUsingDepthFirst(void Function(TreeNode<T> node) action) {
    action(this);

    for (final child in _children) {
      child.forEachUsingDepthFirst(action);
    }
  }

  void forEachUsingLevelOrder(void Function(TreeNode<T> node) action) {
    final QueueUsingDoubleStack<TreeNode<T>> queue = QueueUsingDoubleStack();
    action(this);

    _children.forEach((ele) => queue.enqueue(ele));

    TreeNode<T>? node = queue.dequeue();

    while (node != null) {
      action(node);

      node.children.forEach((ele) => queue.enqueue(ele));
      node = queue.dequeue();
    }
  }

  TreeNode<T>? search(T value) {
    TreeNode<T>? result;

    this.forEachUsingLevelOrder((node) {
      if (node.value == value) result = node;
    });

    return result;
  }
}
