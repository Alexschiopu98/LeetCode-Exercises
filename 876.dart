/// 876. Middle of the Linked List

void main() {
  print(
    Solution().middleNode(
      ListNode(
        1,
        ListNode(
          2,
          ListNode(
            3,
            ListNode(
              4,
              ListNode(
                5,
                ListNode(
                  6,
                  ListNode(
                    7,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

/// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);

  @override
  String toString() {
    return '$val';
  }
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    ListNode? middleNote = head;
    ListNode? endNote = head;

    while (endNote != null && endNote.next != null) {
      middleNote = middleNote?.next;
      endNote = endNote.next?.next;
    }

    return middleNote;
  }
}

class Solution2 {
  ListNode? middleNode(ListNode? head) {
    if (head == null) {
      return null;
    }
    var countTotalNodes = countNodes(head);
    print(countTotalNodes);

    int middleNodePosition = countTotalNodes ~/ 2 + 1;

    ListNode currentNode = head;

    for (int i = 1; i < middleNodePosition; i++) {
      currentNode = currentNode.next!;
    }

    return currentNode;
  }

  int countNodes(ListNode node) {
    var countTotalNodes = 1;

    if (node.next != null) {
      countTotalNodes += countNodes(node.next!);
    }
    return countTotalNodes;
  }
}
