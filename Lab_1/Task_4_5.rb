# Для введенного списка положительных чисел построить список всех
# положительных простых делителей элементов списка без повторений.

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
