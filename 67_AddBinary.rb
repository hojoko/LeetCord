# 2つのバイナリ文字列aとbが与えられると、それらの合計をバイナリ文字列として返します。

# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  return "0" if a == "0" && b == "0"
  def change_binary(x)  
    num = x.reverse.split(//)
    sum = 0
    num.each_with_index do |i, index|
      sum += 2 ** index * i.to_i
    end
    sum
  end

  sum = change_binary(a) + change_binary(b)
  i = 0
  val = []

  while sum > 0
    val[i] = sum % 2
    sum /= 2
    i += 1
  end
  result = val.reverse.join
end

a = "0"
b = "0"
puts add_binary(a, b)