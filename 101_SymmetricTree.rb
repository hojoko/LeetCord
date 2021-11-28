# 二分木の根が与えられたとき、それが自分自身の鏡であるかどうか（中心を中心に対称であるかどうか）を調べます。

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
n4 = TreeNode.new(4)
n5 = TreeNode.new(2)
n6 = TreeNode.new(4)
n7 = TreeNode.new(3)
n1.left = n2
n1.right = n5
n2.left = n3
n2.right = n4
n5.left = n6
n5.right = n7

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  return compare(root.left, root.right)
end

def compare(left, right)
  if left == nil && right == nil
    return true
  elsif left == nil || right == nil
    return false
  else
    return left.val == right.val && compare(left.left, right.right) && compare(left.right, right.left)
  end
end

puts is_symmetric(n1)