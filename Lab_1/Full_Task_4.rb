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

def move_elements(array)
  min_value = array.min
  min_index = array.index(min_value)
  new_array = array[(min_index + 1)..-1]
  new_array += array[0...min_index]
  new_array
end

def find_max(arr, a, b)
  max = nil
  arr[a..b].each do |num|
    if max.nil? || num > max
      max = num
    end
  end
  return max
end

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

def is_prime(num)
  return true if num == 2
  return false if num <= 1

  (2..Math.sqrt(num).to_i).each do |x|
    return false if num % x == 0
  end

  true
end
def list_prime(array)
  array.inject([]) do |res_divide, el|
    divide = (2..el).inject([]) do |res,i|
      res << i if is_prime(i)&& el%i==0
      res
    end
    res_divide.concat(divide).uniq
  end
end


def select_method(num_method, file_name)
  a=0
  b=10
  array = IO.read(file_name).split.map(&:to_i)
  case num_method
    when "1"
      return count_elements(array)
    when "2"
      return move_elements(array)
    when "3"
      return find_max(array, a, b)
    when "4" 
      return indices_less(array)
    when "5" 
      return list_prime(array)
  end
end

puts select_method(ARGV[0], ARGV[1])
