# 1.37 Дан целочисленный массив. Вывести индексы элементов, которые
# меньше своего левого соседа, и количество таких чисел.


def indices_less(array, i = 0, indices = [])
  if i == array.size - 1
    count = indices.size
    return indices, count
  end
  
  if array[i + 1] < array[i]
    indices << i + 1
  end
  # Рекурсивно вызываем функцию для следующего элемента
  indices_less(array, i + 1, indices)
end
