require 'transform_xlsx/data_type.rb'
module TransformXlsx
  class SingleDimensional < DataType
      
      # hash[sheet_name] = [[col1,col2,col3], [val1,val2,val3], [val1,val2,val3]]

      #Go through each row and set first element in row as column, and rest of elements as values corresponding
      # to each element in first row . data(r,c) = value
      def initialize
        super
      end

      def process_data
        @data
      end

  end
end
