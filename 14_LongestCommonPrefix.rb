# 文字列の配列の中で、最も長い共通の接頭辞を持つ文字列を見つける関数を書きましょう。

# 共通の接頭辞がない場合は、空の文字列 "" を返します。

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  common = ""
  for i in 0...strs[0].length do
    s = strs[0][i]
    for j in 1...strs.length do
      if strs[j][i] != s
        return common
      end
    end
    common += s
  end
end



# puts strs.length

# result = ""
# i = 0
# loop do
#   for j in 0...(strs.length) do
#     if strs[j][i] == strs[j+1][i]
#       result += strs[j][i]
#     else
#       break
#     end
#   end
#   i += 1
# end
# puts result
#配列の文字を一文字ずつ入れて要素数で回したいが要素数を取得しながら比較ができない。

#配列の0番目をベースに考えていくことで要素数を固定し比較していく

strs = ["flower","flow","flight"]

longest_common_prefix(strs)
    
