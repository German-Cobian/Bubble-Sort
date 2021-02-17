def bubble_sort(arr)
  swap = true
  loop do
    swap = false
    for i in 0..(arr.length - 2)
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
        swap = true
      end
    end
        if swap == false
          break
        end
  end
  p arr
end

arr = [4, 3, 78, 2, 0, 2]

bubble_sort(arr)

def bubble_sort_by(items)
  swap = true
  loop do
    swap = false
    for i in 0..(items.length - 2)
      evaluation = yield(items[i], items[i + 1])
      if evaluation.positive?
        temp = items[i]
        items[i] = items[i + 1]
        items[i + 1] = temp
        swap = true
      end
    end
        if swap == false
          break
        end
  end
  p items
end

bubble_sort_by(%w[halitosis hi helplesness hello hey help]) do |left, right|
  left.length - right.length
end
