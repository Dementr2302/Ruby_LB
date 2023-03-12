class Student
  attr_accessor :id, :last_name, :first_name, :father_name, :phone, :telegram, :email, :github
  def initialize(args = {})
    @id = args[:id]
    @last_name = args[:last_name]
    @first_name = args[:first_name]
    @father_name = args[:father_name]
    @phone = args[:phone]
    @telegram = args[:telegram]
    @email = args[:email]
    @git = args[:git]

    validate
  end
  def get_info
    puts "Студент #{last_name} #{first_name} #{father_name}"
    if telegram != nil
      puts "Telegram: #{telegram}"
    end
    if phone != nil
      puts "Телефон: #{phone}"
    end
    if email != nil
      puts "Почта: #{email}"
    end
    if github != nil
      puts "Github: #{github}"
    end
  end

  def validate
    validate_contacts
    validate_oun_contact
  end

  def validate_contacts
    raise "Номер телефона должен быть в формате +7 (XXX) XXX-XX-XX" if phone && phone !~ /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/
    raise "Github должен быть в формате https://github.com/Dementr2302" if github && github !~ /\Ahttps:\/\/github\.com\/\w+\z/
    raise "Telegram должен быть в формате @dementr" if telegram && telegram !~ /^@[A-Za-z\d_]{5,32}$/
    raise "Почта должен быть в формате dementr@yandex.ru" if email && email !~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  end

  def validate_oun_contact
    raise "Необходимо указать хотя бы один контакт для связи" unless phone || telegram || email
  end

end