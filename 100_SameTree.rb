# 2つの二分木pとqの根が与えられたとき、それらが同じであるかどうかをチェックする関数を書きなさい。

# 2つの二分木は、構造的に同一で、ノードが同じ値を持つ場合、同じものとみなされる。

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
m1 = TreeNode.new(1)
m2 = TreeNode.new(2)
m3 = TreeNode.new(3)
n1.left = n2
n1.right = n3
m1.left = m2
m1.right = m3

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  if p && q
    return p.val == q.val && is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
  else
    return p == q
  end
end

puts is_same_tree(n1, m1)