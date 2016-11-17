def binary_search(num, array)
  low = 0
  high = array.length - 1

  while (low <= high)
    mid = low+((high - low) / 2)
    if array[mid] == num
      return mid
    elsif array[mid] < num
      low = mid + 1
    else
      high = mid - 1
    end
  end
  -1
end


p binary_search(1, [1]) == 0
p binary_search(4, [1,2,3]) == -1
p binary_search(4, [1,2,3,4,5]) == 3
p binary_search(6, [1,2,3,4,5,6,7,8,9]) == 5
p binary_search(2, [1,2,3,5,6,7,8,9,10,11]) == 1
p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 4