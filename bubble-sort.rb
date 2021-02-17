def bubble_sort(arr)
  (arr.length).times do
    for i in 0..(arr.length - 2)
      if arr[i] > arr[i + 1]
          temp = arr[i]
          arr[i] = arr[i + 1]
          arr[i + 1] = temp
        end   
    end
end
return arr
end 

arr = [4, 3, 78, 2, 0, 2]

p bubble_sort(arr)