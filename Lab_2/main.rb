require_relative 'Student_class.rb'

student1 = Student.new(1, "Байрамов", "Дмитрий", father_name: "Дмитиревич", phone: "+7 924 209 16 11", telegram: "@dementr", email: "dmitr@mail.com", github: "dementr2302")
puts student1.get_info

student2 = Student.new(2, "Байрамов", "Дмитрий", father_name: "Дмитиревич", phone: "+7 924 209 16 11", telegram: "@dementr", email: "dmitr@mail.com", github: "dementr2302")
puts student2.get_info

