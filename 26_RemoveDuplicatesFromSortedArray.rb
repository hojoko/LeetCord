# 減らない順にソートされた整数配列numsが与えられたとき、ユニークな各要素が一度だけ現れるように、重複をその場で取り除く。要素の相対的な順序は同じままでなければならない。

# 言語によっては配列の長さを変更することができないので、代わりに結果を配列numsの最初の部分に配置する必要がある。より正式には、重複を取り除いた後にk個の要素がある場合、numsの最初のk個の要素に最終的な結果を入れるべきである。最初のk個の要素より先に何を残すかは問題ではありません。

# 最終結果をnumsの最初のk個のスロットに入れた後、kを返します。

# 別の配列のために余分なスペースを割り当ててはいけません。これを行うには、O(1)個の余分なメモリを使って入力配列をその場で変更しなければなりません。

# @param {Integer[]} nums
# @return {Integer}


# def remove_duplicates(nums)
#   result = nums.length
#   k = 0
#   while k < nums.length  do
#     for i in k+1...nums.length do
#       if nums[k] == nums[i] && nums[k] != nil
#         nums[i] = nil
#         result -= 1
#       end
#     end
#     k += 1
#   end
#   i = 0
#   while i < nums.length do
#     if nums[i] == nil
#       nums.delete_at(i)
#       nums.push()
#       i -= 1
#     end
#     i += 1
#   end
#   puts nums
# end

def remove_duplicates(nums)
  return if nums.length == 0
  nums.length.times { |i| nums[i] = nil if nums[i] == nums[i+1] }
  nums.compact!
  return nums.length
end

nums = [0,0,1,1,1,2,2,3,3,4]
puts remove_duplicates(nums)

