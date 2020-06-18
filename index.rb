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

array = [2, 5, 7, 2, 8, 1, 100, 0, 6, 9, 35, 3]
p bubble_sort(array)
array = %w[hi hello hey hey ruby microverse]
p bubble_sort_by(array) { |left, right| left.length - right.length }
