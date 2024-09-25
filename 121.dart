/// 121. Best Time to Buy and Sell Stock

/*
You are given an array prices where prices[i] is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
*/

// prices = [4,8,2,17];
// buyDay = 2;
// sellDay = 17;
// profit = 17-2 = 15;

void main() {
  const prices = const [4, 3, 4, 8, 2, 5];
  print(Solution().maxProfit(prices));
  print(Solution1().maxProfit(prices));
  print(Solution2().maxProfit(prices));
}

class Solution {
  // Time Complexity: O(n)
  // Space Complexity: O(1)
  int maxProfit(List<int> prices) {
    int profit = 0;
    int buyDayLow = prices[0];
    for (int price in prices) {
      if (buyDayLow > price) {
        buyDayLow = price;
        continue;
      }
      final int newProfit = price - buyDayLow;
      if (profit < newProfit) {
        profit = newProfit;
      }
    }
    return profit;
  }
}

class Solution2 {
  // Time Complexity: O(n)
  // Space Complexity: O(1)
  int maxProfit(List<int> prices) {
    int profit = 0;
    int buyDayLowIndex = 0;
    for (int i = 1; i < prices.length; i++) {
      if (prices[buyDayLowIndex] > prices[i]) {
        buyDayLowIndex = i;
      } else if (profit < prices[i] - prices[buyDayLowIndex]) {
        profit = prices[i] - prices[buyDayLowIndex];
      }
    }
    return profit;
  }
}

class Solution1 {
  // Time Complexity: O(n^2)
  // Space Complexity: O(1)
  int maxProfit(List<int> prices) {
    int profit = 0;
    for (int i = 0; i < prices.length - 1; i++) {
      final int buyDay = prices[i];
      for (int j = i + 1; j < prices.length; j++) {
        final int sellDay = prices[j];
        final int currentProfit = sellDay - buyDay;
        if (profit < currentProfit) {
          profit = currentProfit;
        }
      }
    }
    return profit;
  }
}
