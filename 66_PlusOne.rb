# 大きな整数が整数配列digitsとして与えられます。桁は左から右に向かって最上位から最下位の順に並んでいます。大きな整数には先頭の0は含まれていません。

# 大きい方の整数を1つ増やし、その結果であるdigitsの配列を返します。

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  (digits.length-1).downto(0) do |i|
    if digits[i] != 9
      digits[i] += 1 
      return digits
    else
      digits[i] = 0
    end
  end
  if digits[0] == 0
    digits[0] = 1
    digits.push(0)
  end
  digits
end

digits = [9,9]
puts plus_one(digits)