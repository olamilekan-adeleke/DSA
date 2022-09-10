/// Example: Implement Stack using Queues
/// Level: Easy
/// Link: https://leetcode.com/problems/implement-stack-using-queues/
///
/// Implement a last-in-first-out (LIFO) stack using only two queues.
/// The implemented stack should support all the functions of a normal
/// stack (push, top, pop, and empty).
///
/// Implement the MyStack class:
/// - void push(int x) Pushes element x to the top of the stack.
/// - int pop() Removes the element on the top of the stack and returns it.
/// - int top() Returns the element on the top of the stack.
/// - boolean empty() Returns true if the stack is empty, false otherwise.
///
/// Notes:
/// You must use only standard operations of a queue, which means that only
/// push to back, peek/pop from front, size and is empty operations are valid.
/// Depending on your language, the queue may not be supported natively.
/// You may simulate a queue using a list or deque (double-ended queue) as
/// long as you use only a queue's standard operations.
///
abstract class CustomStack<E> {
  void push(E element);

  E? pop();

  E? top();

  bool empty();
}

/// Solution: So for this problem, we are going to use two queues to solve
/// achieve a Last-In-First-Out operation.
/// We all know a queue is a First-In-First-Out data structure, see link below.
/// https://www.naukri.com/learning/articles/queue-data-structure-types-implementation-applications/
///
/// We are going to be using two lists for our queues for now.
///
/// Also we are going to be keeping track for the top (last added value) in the
/// memory.
///
///
/// - Push:
///     For the push operation we just add the element the end of the MainQueue
/// and update the value for top (which is the last added element).
///
///
/// - Top:
///     Since we are keeping track of top (Last added element) in memory, we can
/// easily get top (last added element) by returning the value for top.
///
///
/// - Pop:
///     Now pop will be a little tricky, (this is where we are going to see why
/// we needed a second queue).
/// Recall that Queue is a First-In-First-Out data structure, so we are going
/// to have to remove every element in the queue expect the last one.
///
/// Step 1: we loop through the MainQueue and start removing the element for the
/// start/Front of the list (why i heard you ask..? Well do not forget we are using a
/// queue, and queue only allow you to add element to the back/end if a list and
/// remove element from the front or top of the list).
///
/// Next we added the element we just removed from the start/Front of the
/// MainQueue to the back/End of the SecondaryQueue. we keep removing from the
/// MainQueue and adding to SecondaryQueue till we have one element left
/// on the MainQueue. We will also be updating the value of Top (last element added).
///
/// Step 2: once we have only one element left, next we remove the last element
/// and keep it so we can return it later.
///
/// Step 3: Next we set MainQUeue to equal to SecondaryQueue and set
/// SecondaryQueue to equal to an empty Queue.
///
///
/// - Empty:
///     This one is very simple, we just check if the MainQueue is empty or not.
///
class MyCustomStack<E> implements CustomStack<E> {
  List<E> _mainQueue = <E>[];
  List<E> _secondaryQueue = <E>[];
  E? _top;

  @override
  void push(E element) {
    _mainQueue.add(element);

    _top = element;
  }

  @override
  E? top() => _top;

  @override
  E? pop() {
    while (_mainQueue.length > 1) {
      final E val = _mainQueue.removeAt(0);
      _secondaryQueue.add(val);

      _top = val;
    }

    final E lastElement = _mainQueue.removeAt(0);

    _mainQueue = _secondaryQueue;
    _secondaryQueue = <E>[];

    return lastElement;
  }

  @override
  bool empty() => _mainQueue.isEmpty;
}
