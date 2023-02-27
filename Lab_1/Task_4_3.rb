# Дан целочисленный массив и интервал a..b. Необходимо найти
# максимальный из элементов в этом интервале.


def find_max(arr, a, b)
  max = nil
  arr[a..b].each do |num|
    if max.nil? || num > max
      max = num
    end
  end
  return max
end
