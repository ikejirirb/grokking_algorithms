# frozen_string_literal: true

def binary_search(arr, item)
  low = 0
  high = arr.size - 1

  while low <= high
    mid = (low + high) / 2
    case item <=> arr[mid]
    when 0
      return mid
    when -1
      high = mid - 1
    when 1
      low = mid + 1
    end
  end
end
