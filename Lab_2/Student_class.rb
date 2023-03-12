class Student
  attr_accessor :id, :last_name, :first_name, :father_name, :phone, :telegram, :email, :github
  def initialize(id, last_name, first_name, father_name: nil, phone: nil, telegram: nil, email: nil, github: nil)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @father_name = father_name
    @phone = phone
    @telegram = telegram
    @email = email
    @github = github
  end
  def get_info
    puts "Студент #{self.last_name} #{self.first_name} #{self.father_name}"
      if self.telegram != nil
        puts "Telegram: #{self.telegram}"
      end
      if self.phone != nil
        puts "Телефон: #{self.phone}"
      end
      if self.email != nil
        puts "Почта: #{self.email}"
      end
      if self.github != nil
        puts "Github: #{self.github}"
      end
    end

end
