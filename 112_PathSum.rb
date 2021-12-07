# 二分木のルートと整数のtargetSumが与えられたとき、その木がルートからリーフへのパスを持ち、そのパスに沿ったすべての値を足すとtargetSumになる場合にtrueを返します。

# リーフとは子を持たないノードのことである。

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
n1 = TreeNode.new(5)
    n2 = TreeNode.new(4)
    n3 = TreeNode.new(8)
    n4 = TreeNode.new(11)
    n5 = TreeNode.new(13)
    n6 = TreeNode.new(4)
    n7 = TreeNode.new(7)
    n8 = TreeNode.new(2)
    n9 = TreeNode.new(1)
    n1.left = n2
    n1.right = n3
    n2.left = n4
    n3.left = n5
    n3.right = n6
    n4.left = n7
    n4.right = n8
    n6.right = n9
# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
  if root == nil
    return false
  elsif root.left == nil && root.right == nil && root.val == target_sum
    return true
  else
    target_sum -= root.val 
    return has_path_sum(root.left, target_sum) || has_path_sum(root.right, target_sum)
  end
end

puts has_path_sum(n1, 22)

# require 'minitest/autorun'

# class PathSumTest < Minitest::Test
#   def test_has_path_sum
#     n1 = TreeNode.new(5)
#     n2 = TreeNode.new(4)
#     n3 = TreeNode.new(8)
#     n4 = TreeNode.new(11)
#     n5 = TreeNode.new(13)
#     n6 = TreeNode.new(4)
#     n7 = TreeNode.new(7)
#     n8 = TreeNode.new(2)
#     n9 = TreeNode.new(1)
#     n1.left = n2
#     n1.right = n3
#     n2.left = n4
#     n3.left = n5
#     n3.right = n6
#     n4.left = n7
#     n4.right = n8
#     n6.right = n9
#     assert_equal true, has_path_sum(n1, 22)
#   end
# end