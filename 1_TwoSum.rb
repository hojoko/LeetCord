# 整数numsの配列と整数targetが与えられたとき、targetに加算されるような2つの数値のインデックスを返す。

# 各入力には正確に1つの解があると仮定し、同じ要素を2回使用することはできません。

# 答えはどのような順序でも返せます。

def two_sum(nums, target)
    for i in 0...nums.length
      for j in (i + 1)...nums.length
        if nums[i] + nums[j] == target
          return i,j
        end
      end
    end 
end

nums = [2,7,11,15]
target = 9
puts two_sum(nums, target)


