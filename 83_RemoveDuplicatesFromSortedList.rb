# ソートされたリンクリストの先頭が与えられたとき、各要素が一度だけ現れるように、すべての重複を削除します。同様にソートされたリンクリストを返す。

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  return nil if head.nil?
    
  h = t = head
  n = head.next
  
  until n.nil?
      if n.val != t.val
          t = t.next = n
      end
      n = n.next
  end
  
  t.next = nil
  h
end

head = [1,1,2,2,3]
puts delete_duplicates(head)
