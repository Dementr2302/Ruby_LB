require_relative 'exceptions.rb'
class BaseStudent
  private_class_method :new
  protected

  attr_reader :phone, :email, :telegram
  attr_writer :id

  def email=(email)
    raise EmailError unless Student.validate_email(email.to_s)
    @email = email
  end

  def git=(git)
    raise GitError unless Student.validate_git(git.to_s)
    @git = git
  end

  def phone=(phone)
    raise PhoneError unless Student.validate_phone(phone.to_s)
    @phone = phone
  end

  def telegram=(telegram)
    raise TelegramError unless Student.validate_telegram(telegram.to_s)
    @telegram = telegram
  end

  def set_contacts(email: nil, phone: nil, telegram: nil)
    self.email = email
    self.phone = phone
    self.telegram = telegram
  end

  public

  attr_reader :id, :git

  def initialize(id: nil, phone: nil, telegram: nil, email: nil, git: nil)
    self.id = id
    set_contacts(**{ telegram: telegram, phone: phone, email: email })
  end

  def self.validate_phone(phone)
    return /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/ === phone
  end

  def self.validate_git(git)
    return /\Ahttps:\/\/github\.com\/\w+\z/ === git
  end

  def self.validate_telegram(telegram)
    return /^@[A-Za-z\d_]{5,32}$/ === telegram
  end

  def self.validate_email(email)
    return /^[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}$/i === email
  end

  def git?
    !!git
  end

  def exist_contact?
    [telegram, email, phone].any?
  end

  def validate?
    git? && exist_contact?
  end

  # строка для вывода любого одного контакта
  def find_contact
    if exist_contact?
      return "phone: #{phone}" unless phone.nil?
      return "telegram: #{telegram}" unless telegram.nil?
      return "email: #{email}" unless email.nil?
    end
    nil
  end
end