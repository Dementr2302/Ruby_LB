class Student
  attr_accessor :id, :last_name, :first_name, :father_name, :phone, :telegram, :email, :github
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
  def get_info
    puts "Студент #{self.last_name} #{self.first_name} #{self.father_name}"
    puts "Telegram: #{self.telegram}"
    puts "Телефон: #{self.phone}"
    puts "Почта: #{self.email}"
    puts "Github: #{self.github}"
    end

end
