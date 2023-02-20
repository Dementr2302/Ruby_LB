def prost(digit)
  for i in 2...digit do
    if digit%i == 0 
      return false
    end
  end 
  return true
end 

def sum_prost(digit)
  sum = 0
  for i in 2..digit do
    if digit%i == 0 && prost(i)
      sum += i
    end
  end
  return sum
end 
