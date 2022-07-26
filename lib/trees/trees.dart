import '../queues/queue_using_double_stack.dart';

class TreeNode<T> {
  TreeNode(this.value);

  final T value;
  List<TreeNode<T>> _children = <TreeNode<T>>[];
  List<TreeNode<T>> get children => _children;

  /// Add a child to the list of children.
  ///
  /// Args:
  ///   child (TreeNode<T>): The child node to add to the current node.
  void add(TreeNode<T> child) {
    _children.add(child);
  }

  /// "For each node in the tree, perform the action on the node, then perform the
  /// action on each of the node's children."
  ///
  /// The function takes a function as a parameter. The function is called an action.
  /// The action is performed on each node in the tree
  ///
  /// Args:
  ///   action (void Function(TreeNode<T> node)): The function to be called on each
  /// node.
  void forEachUsingDepthFirst(void Function(TreeNode<T> node) action) {
    action(this);

    for (final child in _children) {
      child.forEachUsingDepthFirst(action);
    }
  }

  /// It performs a level order traversal of the tree and calls the action function
  /// on each node.
  ///
  /// Args:
  ///   action (void Function(TreeNode<T> node)): The function to be called on each
  /// node.
  void forEachUsingLevelOrder(void Function(TreeNode<T> node) action) {
    final QueueUsingDoubleStack<TreeNode<T>> queue = QueueUsingDoubleStack();

    action(this);

    _children.forEach((ele) => queue.enqueue(ele));

    TreeNode<T>? node = queue.dequeue();

    while (node != null) {
      action(node);
      node.children.forEach((element) => queue.enqueue(element));
      node = queue.dequeue();
    }
  }

  /// "Search for a value in the tree using level order traversal."
  ///
  /// The function takes a value of type T and returns a TreeNode of type T
  ///
  /// Args:
  ///   value (T): The value to search for.
  ///
  /// Returns:
  ///   A TreeNode<T>?
  TreeNode? search(T value) {
    TreeNode<T>? result;

    this.forEachUsingLevelOrder((node) {
      if (node.value == value) result = node;
    });

    return result;
  }
}
