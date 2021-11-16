# 非負の整数xが与えられたとき、xの平方根を計算して返します。

# 戻り値の型が整数であるため、10進数の桁は切り捨てられ、結果の整数部分のみが返されます。

# 注意： pow(x, 0.5) や x ** 0.5 など，組み込みの指数関数や演算子を使用することはできません。

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  return Integer.sqrt(x)
end

x = 4
puts my_sqrt(x)