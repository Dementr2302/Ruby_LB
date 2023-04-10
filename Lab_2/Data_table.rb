class DataTable
  attr_reader :row_number, :column_number

  def initialize(data, &block)
    self.table = block.call(data)
    self.row_number = table.size
  end

  def get_item(row, col)
    self.table.dig(row, col)&.dup
  end

  def column_number
    self.column_number ||= table.transpose.size
  end

  private

  attr_accessor :table
  attr_writer :row_number, :column_number

  def max_size_column
    table.max_by(&:size).size
  end
end