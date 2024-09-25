/// 20. Valid Parentheses
///
/*
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.
*/

// s = '({[]})' => true
// s = '({{)}}' => false
// s = '(){)}][]' => false

void main(List<String> args) {
  const String trueCase = '()[]{}';
  const String falseCase = '({{)}}';
  print(Solution().isValid(trueCase));
  print(Solution().isValid(falseCase));
}

class Solution {
  // Time Complexity: O(n)
  // Space Complexity: O(l  og n)
  bool isValid(String s) {
    final List<String> temp = [];

    for (var char in s.split('')) {
      switch (char) {
        case '(' || '{' || '[':
          temp.add(char);
          break;
        case ')':
          if (temp.isNotEmpty && temp.last == '(') {
            temp.removeLast();
            break;
          }
          return false;
        case '}':
          if (temp.isNotEmpty && temp.last == '{') {
            temp.removeLast();
            break;
          }
          return false;
        case ']':
          if (temp.isNotEmpty && temp.last == '[') {
            temp.removeLast();
            break;
          }
          return false;
        default:
          return false;
      }
    }
    return temp.isEmpty;
  }
}
