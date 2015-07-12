require 'data_type.rb'
module TransformXlsx
    class TwoDimensional < DataType
      
      # hash[sheet_name] = {:period1 => {:m1 => value, :m2 => value}}

      #Go through each row and set first element in row as column, and rest of elements as values corresponding
      # to each element in first row . data(r,c) = value
      def initialize
        super
      end

      def process_data
        hashed = Hash.new
        @data.each do |sheet_name, sheet|
          hashed[sheet_name] = {}
          columns = sheet[@start_row - 1].compact
          columns.each do |key|
            hashed[sheet_name][key] = {}
          end
          #exclude columns from further processing
          sheet.shift
          sheet.each_with_index do |row, idx|
            unless row.compact == []
              key1 = row.first
              row.shift
              row.each_with_index do |v,i|
                hashed[sheet_name][columns[i]].merge!({key1 => v}) 
              end
            end
          end
        end
        hashed
      end
    end
  end

