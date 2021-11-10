# 整数の配列numsと整数のvalが与えられたとき、numsに出現するvalをすべてその場で削除します。要素の相対的な順序は変更可能である。

# 言語によっては配列の長さを変更することができないので、代わりに結果を配列numsの最初の部分に置くようにしなければならない。より正式には、重複を取り除いた後にk個の要素がある場合、numsの最初のk個の要素に最終的な結果を入れるべきである。最初のk個の要素より先に何を残すかは問題ではありません。

# 最終結果をnumsの最初のk個のスロットに入れた後、kを返します。

# 別の配列のために余分なスペースを割り当ててはいけません。これを行うには、O(1)個の余分なメモリを使って入力配列をその場で変更しなければなりません。

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.length.times { |i| nums[i] = nil if nums[i] == val }
    nums.compact!
    return nums.length
end

nums = [3,2,2,3]
val = 3
remove_element(nums, val)