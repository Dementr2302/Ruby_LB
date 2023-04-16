require_relative 'Data_list'
require_relative 'Data_table'



class DataListStudentShort < DataList

  public_class_method :new

  def initialize(obj_list)
    super
  end

  def get_names
    %w[short_name git find_contact]
  end

  # новый экземпляр класса DataTable из списка объектов obj_list
  def get_data
    id = 0
    dt = obj_list.inject([]) do |res, object|
      fields = [id, object.short_name, object.git, object.find_contact]
      row = fields.inject([]) do |row, field|
        row << field
      end
      id += 1
      res << row
    end
    DataTable.new(dt)
  end

  # возвращает список, содержащий краткое имя объекта, ссылку на git
  def get_fields(object)
    [object.short_name, object.git, object.find_contact]
  end

end