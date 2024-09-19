/// 1342. Number of Steps to Reduce a Number to Zero

void main() {
  print(Solution().numberOfSteps(14));
  print(Solution().numberOfStepsBitwise(14));
}

class Solution {
  int numberOfSteps(int num) {
    int stepsCount = 0;
    while (num > 0) {
      if (num % 2 == 0) {
        num ~/= 2;
      } else {
        num--;
      }
      stepsCount++;
    }
    return stepsCount;
  }

  int numberOfStepsBitwise(int num) {
    int stepsCount = 0;
    while (num > 0) {
      if ((num & 1) == 0) {
        num >>= 1;
      } else {
        num--;
      }
      stepsCount++;
    }
    return stepsCount;
  }
}
