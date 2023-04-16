class DataTable
  attr_reader :row_number, :column_number

  def initialize(data, &block)
    self.table = block.call(data)
    self.row_number = table.size
  end

  #получить элемент по номеру столбца и строки
  def get_item(row, col)
    self.table.dig(row, col)&.dup
  end
  #количество столбцов в таблице
  def column_number
    self.column_number ||= table.transpose.size
  end

  private

  attr_accessor :table
  attr_writer :row_number, :column_number

  #максимальный размер столбца
  def max_size_column
    table.max_by(&:size).size
  end
end