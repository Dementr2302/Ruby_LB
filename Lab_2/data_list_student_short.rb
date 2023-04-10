require_relative 'Data_list'
require_relative 'Data_table'

class DataListStudentShort<DataList

  public_class_method :new

  def initialize(obj_list)
    super
  end

  def get_names
    %w[short_name git find_contact]
  end

  def get_data
    id=0
    dt = obj_list.inject([]) do |res, object|
      fields = [id, object.short_name, object.git, object.find_contact]
      row = fields.inject([]) do |row, field|
        row<<field
      end
      id+=1
      res<<row
    end
    DataTable.new(dt)
  end
end