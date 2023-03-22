require_relative 'Student_class.rb'


student1 = Student.new({last_name: 'Иванов', first_name: 'Иван', email: 'ivanov@example.com', github: 'https://github.com/ivanov'})
puts "Данные студента 1:"
student1.get_info
puts "Контактные данные студента 1 корректны" if student1.validate


student2 = Student.new({last_name: 'Петров', first_name: 'Петр', phone: '+79001234567', telegram: '@petrov', email: 'petrov@example.com', github: 'https://github.com/petrov'})

# создал классы исключений , чтоб ловить их )

begin
  student2.phone_err = '123'
rescue PhoneError => e
  puts "#{e.message}"
end







