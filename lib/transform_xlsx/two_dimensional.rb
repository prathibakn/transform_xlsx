#require 'data_type'
module TransformXlsx
    class TwoDimensional < DataType
      
      # hash[sheet_name] = {:period1 => {:m1 => value, :m2 => value}}

      #Go through each row and set first element in row as column, and rest of elements as values corresponding
      # to each element in first row . data(r,c) = value
      def initialize file_path, sheet_number, start_row
        super( file_path, sheet_number, start_row)
      end

      def process_data
        hashed = Hash.new
        sheet = nil
        @data.each do |sheet_name, sheet|
          hashed[sheet_name] = {}
          columns = sheet[@start_row - 1].compact
          columns.each do |key|
            hashed[sheet_name][key] = {}
          end
          #exclude first row(columns) from further processing
          sheet.each_with_index do |row, idx|
            if (row.compact != [] and idx != 0)
              key1 = row.compact.first
              row.each_with_index do |v,i|
                if i != 0
                  hashed[sheet_name][columns[i-1]].merge!({key1 => v}) 
                end
              end
            end
          end
        end
        hashed
      end
    end
  end

