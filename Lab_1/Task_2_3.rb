#Найти произведение таких делителей числа, сумма цифр
#которых меньше, чем сумма цифр исходного числа.

def sum_ch(ch)
  summ=0
  while ch>0
    summ+=ch%10
    ch/=10
  end
  summ
end

def pr_ch(ch)
  p=1
  1.upto(ch) do |i|
    if  ch%i==0 && sum_ch(i)<sum_ch(ch)
      p*=i
    end
  end
  p
end
