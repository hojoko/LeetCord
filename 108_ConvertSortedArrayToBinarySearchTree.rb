# 要素が昇順にソートされた整数配列numsが与えられたとき、これを高さバランス型二分探索木に変換する。

# 高さバランス二分木とは，すべてのノードの2つの部分木の深さが1以上異なることのない二分木である．

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
    return nil if nums.nil? || nums.length == 0
    return TreeNode.new(nums.first) if nums.length == 1
    middle = nums.length / 2
    root = TreeNode.new(nums[middle])
    root.left = sorted_array_to_bst(nums[0...middle])
    root.right = sorted_array_to_bst(nums[(middle + 1)..-1])
    return root
end

nums = [-10,-3,0,5,9]
puts sorted_array_to_bst(nums).val