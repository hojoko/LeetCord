# 文字 '('、')'、'{'、'}'、'['、']'だけを含む文字列 s が与えられたとき、入力文字列が有効かどうかを判断する。

# 入力文字列が有効なのは以下の場合です。

# 開いた括弧は、同じ種類の括弧で閉じなければならない。
# 開いた括弧は正しい順序で閉じなければならない。
 
# @param {String} s
# @return {Boolean}
def is_valid(s)
  tmp = []
  for i in 0...s.length
    if tmp[-1] == "(" && s[i] == ")"
      tmp.pop
    elsif tmp[-1] == "[" && s[i] == "]"
      tmp.pop
    elsif tmp[-1] == "{" && s[i] == "}"
      tmp.pop
    else
      tmp.push(s[i])
    end
  end
  return tmp.length <= 0 ? true : false
end

s = "({})"
puts is_valid(s)



#一番最後のカッコに属性を持たせてそれが閉じる前に他の閉じカッコがきたらfalseになるようにする。
# 具体的には
# ”（”と入力されたら”（”に
# open = 0
# みたいなのを付けてどのカッコが閉じてないのかわかるようにする。

# j = s.length - 1
# for i in 1..s.length do
#   open[i-1] = s[i-1]
#   if s[i] == "(" || s[i] == "[" || s[i] == "{" 
#     open[i] = s[i]
#   else
#     if s[i] == ')' && open [j] == '(' 
#       j -= 1
#     elsif s[i] == "]" && open [j] == "[" 
#       j -= 1
#     elsif s[i] == "}" && open [j] == "{" 
#       j -= 1
#     else
#       puts false
#     end
#   end
# end


