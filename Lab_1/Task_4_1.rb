# Дан целочисленный массив. Необходимо найти количество
# элементов, расположенных после последнего максимального.
def count_elements(array)
  max = array[0]
  max_index = 0
  index = 0

  array.each do |num|
    if num >= max
      max = num
      max_index = index
    end
    index += 1
  end

  if max_index == array.length - 1
    return 0
  else
    return array.length - 1 - max_index
  end
end
