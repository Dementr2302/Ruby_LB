require_relative 'Student_class.rb'

student1 = Student.new(1, "Байрамов", "Дмитрий", father_name: "Дмитиревич", phone: "+123456789", telegram: "@dementr", email: "dmitr@mail.com", github: "dementr2302")
student2 = Student.new(2, "Байрамов", "Дмитрий", father_name: "Дмитиревич", phone: "+123456789", telegram: "@dementr", email: "dmitr@mail.com", github: "dementr2302")

puts student1.get_info
puts student2.get_info

