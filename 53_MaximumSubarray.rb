# 整数配列numsが与えられたとき、最大の和を持つ連続したサブアレイ（少なくとも1つの数値を含む）を見つけ、その和を返す。

# サブアレイとは、配列の連続した部分のことである。

# @param {Integer[]} nums
# @return {Integer}
# def max_sub_array(nums)
#   sum = []
#   result = 0
#   sum[0] = nums[0]
#   nums.each_with_index do |i, index|
#     sum[index] = i + sum[index-1] if index != 0
#     result = sum[index] if result < sum[index]
#   end
#   return result
# end

def max_sub_array(nums)
  cache = [nums[0]]
  (1...nums.length).each { |i|
    cache[i] = [nums[i], nums[i] + cache[i-1]].max
  }
  cache.max
end

nums = [-2,1,-3,4,-1,2,1,-5,4]
puts max_sub_array(nums)