# 二分木のルートが与えられた場合、そのノードの値の順序通りのトラバーサルを返します。

#中間順探査。通り掛け順

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

n1 = TreeNode.new(1)
n2 = TreeNode.new(2)
n3 = TreeNode.new(3)
n1.right = n2
n2.left = n3

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  result = []
  if root.left
    result += inorder_traversal(root.left)
  end
  result.push(root.val)
  if root.right
    result += inorder_traversal(root.right)
  end
  result
end

puts inorder_traversal(n1)