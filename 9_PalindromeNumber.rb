# 整数 x が与えられたとき、x が回文整数であれば真を返す。
# 整数は、後ろ向きに読んでも前向きに読んでも同じになる場合、回文になります。例えば、121 は回文ですが、123 は回文ではありません。

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  a = x.to_s.chars
  j = a.length - 1

  for i in 0..j do
    if a[i] != a[j]
      return false
    else
      j -= 1
    end
  end
  return true
end

is_palindrome(121)


