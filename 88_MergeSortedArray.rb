# 非減少順にソートされた2つの整数配列nums1とnums2、およびnums1とnums2の要素数をそれぞれ表す2つの整数mとnが与えられます。

# nums1 と nums2 を統合して、非減少順にソートされた単一の配列にします。

# ソートされた最終的な配列は、この関数では返さずに、配列 nums1 の中に格納します。これに対応するために、nums1 は m + n の長さを持ち、最初の m 個の要素はマージされる要素を表し、最後の n 個の要素は 0 に設定されて無視されます。

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  # nums1.pop(m) if nums1.length != m
  # nums2.pop(n) if nums2.length != n

  nums2.length.times do |i|
    nums1.push(nums2[i])
  end
  nums1.length.times do |i|
    nums1[i] = nil if nums1[i] == 0
  end
  nums1.compact!
  nums1.sort!
end

nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3
puts merge(nums1, m, nums2, n)

