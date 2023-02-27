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



puts""
path = gets.chomp
file = File.open(path)
array = file.readline.split(' ').map(&:to_i)
puts array
puts"Method 2: "
met = gets.chomp
if met == 1
    then puts min_el(array)
else
    puts first_positive_index(array)
end
