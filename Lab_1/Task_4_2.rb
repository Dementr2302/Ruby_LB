# 13 Дан целочисленный массив. Необходимо разместить элементы,
# расположенные до минимального, в конце массива.

def move_elements(array)
  min_value = array.min
  min_index = array.index(min_value)
  new_array = array[(min_index + 1)..-1]
  new_array += array[0...min_index]
  new_array
end
