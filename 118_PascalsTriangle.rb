# 整数 numRows が与えられると、Pascal's triangle の最初の numRows を返す。

# パスカルの三角形では、各数字は図のように真上の2つの数字の和である。

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  result = []
  num_rows.times do |i|
    result.push([1]*(i + 1)) 
  end
  num_rows.times do |i|
    i.times do |j|
      if j == 0
        result[i][j] = 1
      elsif j == i
        result[i][j] = 1
      else
        result[i][j] = result[i-1][j-1] + result[i-1][j]
      end
    end
  end
  return result
end

generate(5)

require 'minitest/autorun'

class PascalsTriangleTest < Minitest::Test
  def test_generate
    assert_equal [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]], generate(5)
    assert_equal [[1]], generate(1)
  end
end