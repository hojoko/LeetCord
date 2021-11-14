# いくつかの単語がいくつかのスペースで区切られている文字列sが与えられたとき、その文字列の最後の単語の長さを返す。

# 単語とは、スペース以外の文字のみで構成される最大の部分文字列です。

 # @param {String} s
# @return {Integer}
def length_of_last_word(s)
  a = s.split
  a[-1].length
end

s = "Hello World"
puts length_of_last_word(s)