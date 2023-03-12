require_relative 'Student_class.rb'

student2 = Student.new({id:1, last_name:"Байрамов", first_name:"Дмитрий", father_name: "Дмитиревич", phone: "+7 928 260 48 86", telegram: "@dementr", email: "dementr@yandex.ru", github: "https://github.com/Dementr2302"})
puts student2.get_info

student1 = Student.new({id:1, last_name:"Байрамов", first_name:"Дмитрий", father_name: "Дмитиревич",telegram: "@dementr" })
puts student1.get_info



