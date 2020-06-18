def bubble_sort(array)
  i = 0
  j = 0
  len = array.length
  until i == len
    j = i + 1
    while j < len
      array[i], array[j] = array[j], array[i] if array[i] > array[j]
      j += 1
    end
    i += 1
  end
  array
end

def bubble_sort_by(array)
  i = 0
  j = 0
  len = array.length
  until i == len
    j = i + 1
    while j < len
      array[i], array[j] = array[j], array[i] if yield(array[i], array[j]).positive?
      j += 1
    end
    i += 1
  end
  array
end
