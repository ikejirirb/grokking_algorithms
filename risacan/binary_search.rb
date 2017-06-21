def binary_search(list, item)
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
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
binary_search(array, 10)
binary_search(array, 7)
binary_search(array, -1)
binary_search(array, 11)

# p9 練習問題 1.1
array = (1..128).to_a
binary_search(array, 1)
binary_search(array, 128)
Math.log(128, 2) # 7

# p9 練習問題 1.2
Math.log(128*2, 2) # 8
array = (1..128*2).to_a
binary_search(array, 1)
binary_search(array, 128*2)