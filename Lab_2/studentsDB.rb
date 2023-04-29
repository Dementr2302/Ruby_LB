require 'sqlite3'

class StudentDB
  @@instance = nil
  # открываем базу данных
  private def initialize
    @db = SQLite3::Database.open '/Users/dmitrijbajramov/Desktop/db_student.sql'
    @db.results_as_hash = true
  end

  def self.instance
    if @@instance.nil?
      @@instance = StudentDB.new
    end
    @@instance
  end

  # выполняем переданный запрос к базе данных.
  def execute(query, *args)
    @db.execute(query, *args)
  end

  def results_as_hash=(bool)
    @db.results_as_hash = bool
  end

end