# мне кажется можно сделать лучше , но пока полежит так (тож прикольно)
class InvalidValueError < StandardError
  def initialize(msg = 'Некорректное значение!')
    super
  end
end

class EmailError < InvalidValueError
  def initialize(msg = 'Ссылка на почту не удовлетворяет шаблону!')
    super
  end
end

class GitError < InvalidValueError
  def initialize(msg = 'Ссылка на git не удовлетворяет шаблону!')
    super
  end
end

class PhoneError < InvalidValueError
  def initialize(msg = 'Номер не удовлетворяет шаблону!')
    super
  end
end

class TelegramError < InvalidValueError
  def initialize(msg = 'Ссылка на телеграм не удовлетворяет шаблону!')
    super
  end
end

class ContactError < InvalidValueError
  def initialize(msg = 'Должен быть указан хотя бы один контакт!')
    super
  end
end