import '../implementation/stack.dart';

/// Example: Valid Parentheses
/// Level: Easy
///
/// Given a string s containing just the characters '(', ')', '{', '}', '['
/// and ']', determine if the input string is valid.
bool isValidParentheses(String s) {
  final Stack<String> stack = Stack<String>();

  /// We Split the string to a list of string e.g "()[]"
  /// becomes ["(", ")", "[", "]"]
  final List<String> list = s.split('');

  /// Next we have a hashMap of Close-To-Open Parentheses.
  /// we will use this to know if the parentheses pair match.
  /// Please also not how it is Close-To-Open, we will understand why later on
  final Map<String, String> parenthesesPair = {')': '(', '}': '{', ']': '['};

  for (String val in list) {
    ///
    /// Next we want to check if the current value is a closing parentheses.
    /// Why?, you ask. Well if it is a open parentheses then we do not need to do
    /// any check and just add the parentheses to the top of our stack.
    ///
    /// But if it is a closing parentheses we will be checking for two condition.
    ///
    /// 1: The Stack is Not Empty, If the stack is empty and the current value
    /// is a closing parentheses then we have a Invalid Parentheses. Because
    /// there is no open parentheses to pair it with.
    ///
    /// 2: We check that the first item on the stack pair with the current value.
    /// E.g, let's say the last added parentheses was "(" and current value /
    /// parentheses is ")", parenthesesPair[currentValInForLoop] (which is same
    /// as parenthesesPair[")"]) will give use "(".
    /// Thus we can say they match.
    ///
    if (parenthesesPair.containsKey(val)) {
      if (stack.isNotEmpty && stack.peek == parenthesesPair[val]) {
        stack.pop();
      } else {
        return false;
      }
    } else {
      stack.push(val);
    }
  }

  return stack.isEmpty;
}

main() {
  String testOne = "()";
  print(isValidParentheses(testOne));

  String testTwo = "()[]{}";
  print(isValidParentheses(testTwo));

  String testThree = ")(";
  print(isValidParentheses(testThree));

  String testFour = "({[]})";
  print(isValidParentheses(testFour));
}
