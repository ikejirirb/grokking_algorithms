def binary_search(list, item)
  puts "はじめ！"
  puts "#{item}を探すぞ!!"
  # index
  low = 0
  high = list.size - 1
  step = 0
  while high >= low
    mid = (low + high) / 2
    if list[mid] == item
      puts "🎊 #{list[mid]} 🎊"
      break
    elsif list[mid] > item
      high = mid - 1
    elsif item > list[mid]
      low = mid + 1
    end
    step += 1
    puts step
  end
  puts "おわり！"
end

array = [1, 2, 4, 5, 7, 8, 9, 10]
binary_search(array, 10)
puts
binary_search(array, 7)
puts
binary_search(array, -1)
puts
binary_search(array, 11)
puts

# p9 練習問題 1.1
Math.log(128, 2) # 7
puts
array = (1..128).to_a
binary_search(array, 1)
puts
binary_search(array, 128)
puts


# p9 練習問題 1.2
Math.log(128*2, 2) # 8
puts
array = (1..128*2).to_a
binary_search(array, 1)
puts
binary_search(array, 128*2)
puts