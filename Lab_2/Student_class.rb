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

  def get_info
    puts "Студент #{self.last_name} #{self.first_name} #{self.father_name}"
    puts "Telegram: #{self.telegram}"
    puts "Телефон: #{self.phone}"
    puts "Почта: #{self.email}"
    puts "Github: #{self.github}"
    end

end
