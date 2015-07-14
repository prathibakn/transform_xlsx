require 'roo'
require 'json'

class DataType
  attr_accessor :start_row, :data
  def initialize file_path, sheet_number, start_row
    @start_row = start_row
    file = Roo::Excelx.new(file_path)
    @data = Hash.new

    sheet_name = file.sheets[sheet_number]
    validate_input(file, sheet_name, start_row)
    @data[sheet_name] = file.to_a
  end
  
  def validate_input(file, sheet_name, start_row)
    if sheet_name.nil?
      raise "Sheet number #{sheet_number} not found"
    end
    file.default_sheet = sheet_name

    if file.first_row != start_row
      raise "No column data at start row - #{start_row}"
    end
  end

  def process_data
  end
  
  def to_hash
    process_data
  end
  
  def to_json
    to_hash.to_json
  end

end
