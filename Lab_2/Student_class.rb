class Student

  def initialize(id, last_name, first_name, father_name = nil, phone = nil, telegram = nil, email = nil, github = nil)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @father_name = father_name
    @phone = phone
    @telegram = telegram
    @email = email
    @github = github
  end

  def id
    @id
  end

  def id=(value)
    @id = value
  end

  def last_name
    @last_name
  end

  def last_name=(value)
    @last_name = value
  end

  def first_name
    @first_name
  end

  def first_name=(value)
    @first_name = value
  end

  def father_name
    @father_name
  end

  def father_name=(value)
    @father_name = value
  end

  def phone
    @phone
  end

  def phone=(value)
    @phone = value
  end

  def telegram
    @telegram
  end

  def telegram=(value)
    @telegram = value
  end

  def email
    @email
  end

  def email=(value)
    @email = value
  end

  def github
    @github
  end

  def github=(value)
    @github = value
  end
end


student1 = Student.new(1, "Байрамов", "Дмитрий", "Дмитиревич", "+123456789", "@dementr", "dmitr@mail.com", "dementr2302")

puts "Студент #{student1.last_name} #{student1.first_name} #{student1.father_name}, id: #{student1.id}"
puts "Telegram: #{student1.telegram}" if student1.telegram
puts "Телефон: #{student1.phone}" if student1.phone
puts "Почта: #{student1.email}" if student1.email
puts "Github: #{student1.github}" if student1.github