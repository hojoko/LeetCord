# ソートされた2つのリンクリストをマージし、それをソートされたリストとして返します。このリストは、最初の2つのリストのノードをつなぎ合わせたものでなければなりません。

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}


# def merge_two_lists(l1, l2)
#   sum = []
#   for i in 0...l1.length do
#     sum[i] = l1[i]
#   end
#   for i in l1.length...(l1.length + l2.length) do
#     sum[i] = l2[i-l1.length]
#   end
#   com = []
#   com[0] = sum[0]
#   for i in 0...(sum.length-1) do
#     for j in 0...sum.length do
#       if com[i] > sum[j]
#         com[i] = sum[j]
#       end
#     end
#   end
#   puts com
# end




def merge_two_lists(l1, l2)
    l3 = ListNode.new(0)
    result = l3
    while l1 != nil && l2 != nil
      if l1.val <= l2.val 
        l3.next = l1
        l1 = l1.next
      else
        l3.next = l2
        l2 = l2.next
      end
      l3 = l3.next
    end
    l3.next = l1 || l2
    return result.next
end

l1 = [1,2,4,3]
l2 = [1,3,4]
merge_two_lists(l1, l2)