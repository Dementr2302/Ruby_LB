#1 Написать методы, которые находят минимальный,
#  элементы, номер первого положительного элемента. Каждая
#  операция в отдельном методе. Решить задачу с помощью
#  циклов(for и while).
#2 Написать программу, которая принимает как аргумент два
#  значения. Первое значение говорит, какой из методов задачи
#  1 выполнить, второй говорит о том, откуда читать список
#  аргументом должен быть написан адрес файла. Далее
#  необходимо прочитать массив и выполнить метод.

def min_el(array)
  min = array[0]
  for num in array
    min = num if num < min
  end
  min
end

def first_positive_index(array)
  index = nil
  i = 0
  while i < array.length
    if array[i] > 0
      index = i
      break
    end
    i += 1
  end
  index
end



def vibor(num, file) 
  mass = IO.read(file).split.map(&:to_i) 
  case num
    when "1"
      return min_el(mass)
    when "2"
      return first_positive_index(mass)
  end
end 

puts vibor(ARGV[0], ARGV[1])
