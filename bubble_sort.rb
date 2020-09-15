def bubble_sort(arr)
  loop do
    sorting_in_progress = false

    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorting_in_progress = true
      end
    end
    break unless sorting_in_progress
  end
  arr
end

def bubble_sort_by(arr)
  loop do
    sorting_in_progress = false

    (arr.length - 1).times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorting_in_progress = true
      end
    end
    break unless sorting_in_progress
  end
  arr
end
