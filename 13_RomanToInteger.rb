# ローマ数字は7種類の記号で表されます。I、V、X、L、C、D、M
  # Symbol       Value
  # I             1
  # V             5
  # X             10
  # L             50
  # C             100
  # D             500
  # M             1000

# 例えば、2はローマ数字ではIIと書き、1を2つ足しただけです。12はXIIと書きますが、これは単にX＋IIです。27はXXVIIと書き、XX + V + IIとなります。

# ローマ数字は通常、左から右に向かって大きいものから小さいものへと書いていきます。しかし、4を表す数字はIIIIではありません。代わりに、4はIVと書きます。1が5の前にあるので、それを引いて4とします。同じ原理で、9という数字はIXと書きます。引き算が使われる例は6つあります。

# IはV(5)とX(10)の前に置かれ、4と9になります。
# XをL(50)とC(100)の前に置くと、40と90になります。
# CをD(500)とM(1000)の前に置くと、400と900になります。
# ローマ数字が与えられたら，それを整数に変換しなさい。

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  num = s.chars
  sum = 0
  for i in 0..(s.length) do
    case num[i]
    when "I" then
      sum += 1
    when "V" then
      sum += 5
      sum -= 2 if num[i-1] == "I" && i != 0
    when "X" then
      sum += 10
      sum -= 2 if num[i-1] == "I" && i != 0
    when "L" then
      sum += 50
      sum -= 20 if num[i-1] == "X" && i != 0
    when "C" then
      sum += 100
      sum -= 20 if num[i-1] == "X" && i != 0
    when "D" then
      sum += 500
      sum -= 200 if num[i-1] == "C" && i != 0
    when "M" then
      sum += 1000
      sum -= 200 if num[i-1] == "C" && i != 0
    end
  end
  return sum  
end


