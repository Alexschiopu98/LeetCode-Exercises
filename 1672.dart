/// 1672. Richest Customer Wealth

void main() {
  print(Solution().maximumWealth([
    [1, 2, 3],
    [3, 2, 1],
  ]));
}

class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int maxWealthSum = 0;
    for (List<int> account in accounts) {
      int accountWealthSum = 0;
      for (int wealth in account) {
        accountWealthSum += wealth;
      }
      if (maxWealthSum < accountWealthSum) maxWealthSum = accountWealthSum;
    }
    return maxWealthSum;
  }
}
