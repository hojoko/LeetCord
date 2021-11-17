# あなたは階段を登っています。頂上に到達するにはn段の階段が必要です。

# 毎回、あなたは1段または2段登ることができます。何通りの方法で頂上まで登ることができますか？

 # @param {Integer} n
# @return {Integer}
# def climb_stairs(n)
#     x = n / 2
#     x_amari = n % 2 if n % 2 == 1
#     permutation 
# end

def climb_stairs(n)
  return 1 if n == 1
  return 2 if n == 2
  fb = []
  fb[1] = 1
  fb[2] = 2
  3.upto(n) do |x|
    fb[x] = fb[x-1] + fb[x-2]
  end
  fb.last
end

n = 5
puts climb_stairs(n)