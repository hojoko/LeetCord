# 二分木のルートが与えられたとき、その最大深度を返す。

# 二分木の最大深度は、ルートノードから最も遠いリーフノードまでの最長パスに沿ったノードの数である。

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
n1.left = n2
n1.right = n3
n3.left = n4
n3.right = n5
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root == nil
  [max_depth(root.left), max_depth(root.right)].max + 1
end

puts max_depth(n1)