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

# p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]
