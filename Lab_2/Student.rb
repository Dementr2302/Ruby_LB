require_relative 'exceptions.rb'

class Student
  attr_reader :last_name, :first_name, :father_name, :phone, :telegram, :email, :github
  def initialize(args = { last_name: '', first_name: '' })
    @id = args[:id]
    @last_name = args[:last_name]
    @first_name = args[:first_name]
    @father_name = args[:father_name]
    @phone = args[:phone]
    @telegram = args[:telegram]
    @email = args[:email]
    @github = args[:github]

    raise ArgumentError, 'Фамилимя Имя - обязательные параметры' unless @last_name && @first_name

    validate
  end

  def to_s
    "ID: #{@id}\n Surname: #{@last_name}\n Name: #{@first_name}\n father_name: #{@father_name}\n Phone: #{@phone}\n Telegram: #{@telegram}\n Email: #{@email}\n Github: #{@github}"
  end

  def validate
    Student.validate_email(email)
    Student.validate_telegram(telegram)
    Student.validate_phone(phone)
    Student.validate_github(github)
    validate_other_contact

  end

  # увидел в интернетах , что будет круто написать свои классы исколючений наследующихся от базового 🙂
  # не факт что прописал правильно но вроде прикольно

  def self.validate_phone(phone)
    return /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/ === phone
  end

  def self.validate_github(github)
    return /\Ahttps:\/\/github\.com\/\w+\z/ === github
  end

  def self.validate_telegram(telegram)
    return /^@[A-Za-z\d_]{5,32}$/ === telegram
  end

  def self.validate_email(email)
    return /^[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}$/i === email
  end

  def mail_err=(email)
    raise EmailError unless Student.validate_email(email.to_s)
    @email = email
  end

  def git_err=(github)
    raise GitError unless Student.validate_github(github.to_s)
    @github = github
  end

  def phone_err=(phone)
    raise PhoneError unless Student.validate_phone(phone.to_s)
    @phone = phone
  end

  def telegram_err=(telegram)
    raise TelegramError unless Student.validate_telegram(telegram.to_s)
    @telegram = telegram
  end

  def has_other_contact?
    phone || telegram || email
  end

  def validate_other_contact
    raise ContactError unless has_other_contact?
  end

end
