/// 442. Find All Duplicates in an Array

/*
Given an integer array nums of length n where all the integers of nums are in the range [1, n] and each integer appears once or twice, return an array of all the integers that appears twice.

You must write an algorithm that runs in O(n) time and uses only constant auxiliary space, excluding the space needed to store the output

Constraints:

n == nums.length
1 <= n <= 105
1 <= nums[i] <= n
Each element in nums appears once or twice.
*/

void main() {}

class Solution {
  // Time Complexity: O(n)
  // Space Complexity: O(1)
  List<int> findDuplicates(List<int> nums) {
    final List<int> twiceNums = [];
    for (int i = 0; i < nums.length; i++) {
      final valueAbs = nums[i].abs();
      final index = valueAbs - 1;
      if (nums[index] < 0) {
        twiceNums.add(valueAbs);
      } else {
        nums[index] = -nums[index];
      }
    }
    return twiceNums;
  }
}
