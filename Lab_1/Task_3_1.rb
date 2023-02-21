#1 Написать методы, которые находят минимальный,
#  элементы, номер первого положительного элемента. Каждая
#  операция в отдельном методе. Решить задачу с помощью
#  циклов(for и while).

def min_el(arr)
  min = arr[0]
  for num in arr
    min = num if num < min
  end
  min
end

def first_positive_index(arr)
  index = nil
  i = 0
  while i < arr.length
    if arr[i] > 0
      index = i
      break
    end
    i += 1
  end
  index
end


arr1 = [4, 7, -2, 10, -5, 3, -8]

puts "Array : #{arr1}"
puts min_el(arr1)
puts first_positive_index(arr1)
