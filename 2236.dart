/// 2236. Root Equals Sum of Children

/// Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool checkTree(TreeNode? root) {
    if (root == null || root.left == null || root.right == null) return false;

    int sumTreeChildren = root.left!.val + root.right!.val;

    bool isEqual = root.val == sumTreeChildren;

    if (isEqual) return true;

    return false;
  }
}
