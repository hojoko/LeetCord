# strStr()を実装します。

# haystackの中にneedleが最初に出現したインデックスを返し、needleがhaystackに含まれていない場合は-1を返します。

# 明確にします。

# needleが空の文字列の場合、何を返せばよいのでしょうか？これは面接のときに聞くといい質問ですね。

# この問題では、needleが空の文字列のときは0を返します。これはC言語のstrstr()やJavaのindexOf()と同じです。

 # @param {String} haystack
# @param {String} needle
# @return {Integer}

# def str_str(haystack, needle)
#   return 0 if needle == ""

#   result = []
#   j = 0
#   while j < needle.length
#     haystack.length.times do |i|
#       if haystack[i] == needle[j] 
#         result.push(i)
#         j += 1
#       end
#     end
#   end
#   return result
# end

def str_str(haystack, needle)
  return haystack.index(needle) if haystack.include? needle
  return -1
end

haystack = "hello"
needle = "lo"
puts str_str(haystack, needle)

human = ["うに", "うに", "くり","うに"]
puts human.index('くり') + 1