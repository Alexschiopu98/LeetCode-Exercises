/// 9. Palindrome Number
// Given an integer x, return true if x is a palindrome, and false otherwise.

void main() {
  final bool result = Solution().isPalindrome(121);
  print(result);
}

class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;
    if (x != 0 && x % 10 == 0) return false;

    int reversedX = 0;

    while (x > reversedX) {
      int digit = x % 10;
      reversedX = reversedX * 10 + digit;
      x ~/= 10;
    }
    if (x == reversedX) return true;
    if (x == reversedX ~/ 10) return true;
    return false;
  }
}

class Solution3 {
  bool isPalindrome(int x) {
    if (x < 0) return false;

    int reversedX = 0;

    int tempX = x;

    while (tempX > 0) {
      int digit = tempX % 10;
      reversedX = reversedX * 10 + digit;
      tempX ~/= 10;
    }
    return reversedX == x;
  }
}

class Solution2 {
  bool isPalindrome(int x) {
    if (x < 0) return false;

    final int reversedX = int.parse(x.toString().split('').reversed.join());
    if (x == reversedX) return true;
    return false;
  }
}

class Solution1 {
  bool isPalindrome(int x) {
    if (x < 0) return false;

    String xString = x.toString();

    int leftIndex = 0;
    int rightIndex = xString.length - 1;

    while (leftIndex <= rightIndex) {
      if (xString[leftIndex] != xString[rightIndex]) return false;

      leftIndex++;
      rightIndex--;
    }
    return true;
  }
}
