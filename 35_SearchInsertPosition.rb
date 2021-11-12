# 別々の整数でソートされた配列と目標値が与えられたとき、目標値が見つかった場合はそのインデックスを返します。見つからない場合は，順に挿入された場合にあるであろうインデックスを返す。

# 実行時の複雑さがO(log n)のアルゴリズムを書かなければならない。

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  return nums.index(target) if nums.include?(target)

  result = 0
  nums.each do |x|
    if x < target 
      result += 1 
    end
  end
  return result
end

nums = [1,3,5,6]
target = 0
puts search_insert(nums, target)