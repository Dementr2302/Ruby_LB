#Найти количество нечетных цифр числа, больших 3

def nech_three(n)
  count = 0
  while n > 0
    digit = n % 10
    if digit > 3 && digit%2!=0
      count += 1
    end
    n /= 10
  end
  count
end
