require_relative 'exceptions.rb'
require 'json'
class Student
  attr_accessor :last_name, :first_name, :father_name,:id, :phone, :telegram, :email, :github
  def initialize(last_name, first_name, father_name, options = {})
    self.last_name = last_name
    self.first_name = first_name
    self.father_name = father_name
    self.id = options[:id]
    self.phone = options[:phone]
    self.telegram = options[:telegram]
    self.email = options[:email]
    self.github = options[:github]

    raise ArgumentError, 'Фамилимя Имя - обязательные параметры' unless @last_name && @first_name && @father_name

    validate
  end

  def self.from_json_str(str)
    params = JSON.parse(str)
    required_params = %w[first_name last_name father_name]
    raise ArgumentError, "Fields required: #{required_params.join(', ')}" unless required_params.all? { |p| params.key?(p) }

    first_name, last_name, father_name = params.values_at('first_name', 'last_name', 'father_name')
    Student.new(first_name, last_name, father_name, params.transform_keys(&:to_sym))
  end
  def to_json_str
    attrs = {}
    %i[last_name first_name father_name id phone telegram email git].each do |attr|
      attr_val = send(attr)
      attrs[attr] = attr_val unless attr_val.nil?
    end
    JSON.generate(attrs)
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

