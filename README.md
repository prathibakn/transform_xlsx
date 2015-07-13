# TransformXlsx

TransformXlsx - Complex Excel input to Organised output in simple data structures.
This gem can be used to parse relationwise complex excel sheets.
The idea is to provide memory efficient and quick way to parse huge excel sheets.

## Installation

Add this line to your application's Gemfile:

    gem 'transform_xlsx'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install transform_xlsx

## Usage
For parsing xlsx files with XxY kind of 2Dimensional data,

convert = TransformXlsx::TwoDimensional.new(file_path, sheet_number, start_row_number)

convert.to_hash
convert.to_json

For parsing xlsx files with 1Dimensional table data,


convert = TransformXlsx::SingleDimensional.new(file_path, sheet_number, start_row_number)

convert.to_hash
convert.to_json

Coming Soon:
Parsing hierarchical data
 
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
