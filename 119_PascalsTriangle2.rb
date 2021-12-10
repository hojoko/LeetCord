# 整数 rowIndex が与えられると、パスカルの三角形の rowIndex 番目（0 番目）の行を返します。

# パスカルの三角形では、各数字は図のように真上の2つの数字の和となる。

# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  result = []
  index = row_index + 1
  index.times do |i|
    result.push([1]*(i + 1))
  end
  
  index.times do |i|
    i.times do |j|
      if j == 0
        result[i][j] = 1
      elsif j == i
        result[i][j] == 1
      else
        result[i][j] = result[i-1][j-1] + result[i-1][j]
      end
    end
  end
  return result[row_index]
end

get_row(3)

require 'minitest/autorun'

class PascalsTriangleTest < Minitest::Test
  def test_get_row
    assert_equal [1,3,3,1], get_row(3)
    assert_equal [1], get_row(0)
    assert_equal [1,1], get_row(1)
  end
end