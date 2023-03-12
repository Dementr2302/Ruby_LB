require_relative 'Student_class.rb'

student1 = Student.new(1, "Байрамов", "Дмитрий", "Дмитиревич", "+123456789", "@dementr", "dmitr@mail.com", "dementr2302")
student2 = Student.new(1, "Байрамов", "Дмитрий", "Дмитиревич", "+123456789", "@dementr", "dmitr@mail.com", "dementr2302")

puts student1.get_info
puts student2.get_info