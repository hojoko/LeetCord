# 二分木が与えられたとき、その最小深度を求めよ。

# 最小の深さは、ルート・ノードから最も近いリーフ・ノードまでの最短経路にあるノードの数である。

# 注：リーフとは，子を持たないノードのことである．

 # Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
n1 = TreeNode.new(3)
n2 = TreeNode.new(9)
n3 = TreeNode.new(20)
n4 = TreeNode.new(15)
n5 = TreeNode.new(7)
n6 = TreeNode.new(1)
n7 = TreeNode.new(2)
n1.left = n2
n1.right = n3
n3.left = n4
n3.right = n5
n2.left = n6
n4.right = n7
# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
 if root == nil
  return 0 
 elsif root.left == nil || root.right == nil
  [min_depth(root.left), min_depth(root.right)].max + 1
 else
  [min_depth(root.left), min_depth(root.right)].min + 1
 end
end

puts min_depth(n1)