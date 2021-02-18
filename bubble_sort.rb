def bubble_sort(arr)
  swap = true
  while swap
    swap = false
    0.upto(arr.length - 2) do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
  end
  p arr
end

def bubble_sort_by(arr)
  swap = true
  while swap
    swap = false
    0.upto(arr.length - 2) do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
  end
  p arr
end

arr = [4, 3, 78, 2, 30, 0, 2, 1]

bubble_sort(arr)

bubble_sort_by(%w[halitosis hi helplesness hello hey help]) do |left, right|
  left.length - right.length
end
