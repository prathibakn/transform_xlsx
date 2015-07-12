require 'roo'
require 'json'

class DataType
  attr_accessor :start_row, :data
  #TODO: options = {0 => :1d_hierarchical, 1=> :2d, 2 => 1d_simple}
  # extend this to aceept type of sheet as input 2D-XxY or hierarchical or 1D-simple column data)
  def initialize file_path, sheet_number, start_row
    @start_row = start_row
    file = Roo::Excelx.new(file_path)
    @data = Hash.new

    sheet_name = file.sheets[sheet_number]
    file.default_sheet = sheet_name
    @data[sheet_name] = file.to_a

    # initialize the excelx data into local variable @data[sheet_name] = array of data by rows in that sheet
#    sheets_numbers.each do |num|
#      sheet_name = file.sheets[num]
#      file.default_sheet = sheet_name
#      @data[sheet_name] = file.to_matrix.to_a
#    end
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
