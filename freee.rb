def main(lines)
  #時間と走行距離を入力？する
  time =
  distance =
  time_miri = []
  time.length.times do |i|
    time_miri[i] = time[0] * 36000000 + time[1] * 3600000 + time[3] * 600000 + time[4] * 60000 + time[6] * 10000 + time[7] * 1000 + time[9] * 100 + time[10] * 10 + time[11]
  end
  dis_sum = 0
  distance.each do |i|
    dis_sum += i
  end
  fee = 410
  dis_sum -= 1052
  while dis_sum > 0 
    fee += 80
    dis_sum -= 237
  end
  time_sum = time_miri[-1] - time_miri[0]
end

# main(readlines)

# 13:50:08.245 0.0
# 13:50:11.123 4.0
# 13:50:12.125 10.2
# 13:50:13.100 8.7

x = readlines
puts x