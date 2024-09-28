/// 21. Merge Two Sorted Lists

void main() {
  var mergedList = Solution().mergeTwoLists(
    makeLinkedList([1, 4, 5, 8]),
    makeLinkedList([1, 3, 7, 9]),
  );
  print(mergedList);
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  @override
  String toString() {
    return '$val, $next';
  }
}

class Solution {
  // Time Complexity: O(n+m)
  // Space Complexity: O(1)
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null && list2 == null) {
      return null;
    }
    if (list1 == null) {
      return list2;
    }
    if (list2 == null) {
      return list1;
    }

    if (list1.val < list2.val) {
      list1.next = mergeTwoLists(list2, list1.next);
      return list1;
    } else {
      list2.next = mergeTwoLists(list1, list2.next);
      return list2;
    }
  }
}

ListNode? makeLinkedList(List<int> list) {
  if (list.isEmpty) return null;
  return ListNode(list.removeAt(0), makeLinkedList(list));
}
