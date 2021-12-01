# 二分木が与えられたとき、それが高さバランスのとれたものかどうかを判断する。

# この問題では，高さバランスのとれた二分木を次のように定義する．

# すべてのノードの左サブツリーと右サブツリーの高さの差が1以下である二分木である．

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
n3 = TreeNode.new(2)
n4 = TreeNode.new(3)
n5 = TreeNode.new(3)
n6 = TreeNode.new(4)
n7 = TreeNode.new(4)
n1.left = n2
n1.right = n3
n2.left = n4
n2.right = n5
n5.left = n6
n5.right = n7
# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root) 
  return depth(root) >= 0
end

def depth(root)
  return 0 if root == nil
  left = depth(root.left)
  right = depth(root.right)
  if (left - right).abs > 1 || left < 0 || right < 0
    return -1
  end
  return [left, right].max + 1
end

puts is_balanced(n1)

