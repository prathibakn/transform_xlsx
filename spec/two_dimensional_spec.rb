require 'spec_helper'
describe "TwoDimensional" do
  before(:all) do
    @convert = TransformXlsx::TwoDimensional.new("spec/fixtures/Workbook1.xlsx", 1, 1)
  end
  it "should trasform the the excel given sheet number and start row to a Hash object" do
    hash_result = {"Sheet2"=>{"p1"=>{"metric 1"=>1.0, "m2"=>6.0, "m3"=>23.0, "m4"=>56.0, "m5"=>56.0, "m6"=>4.0, "m7"=>3.0, "m8"=>345.0, "m9"=>76.0}, "p2"=>{"metric 1"=>2.0, "m2"=>7.0, "m3"=>345.0, "m4"=>234.0, "m5"=>3.0, "m6"=>345.0, "m7"=>35.0, "m8"=>nil, "m9"=>345.0}, "p3"=>{"metric 1"=>3.0, "m2"=>8.0, "m3"=>6.0, "m4"=>234.0, "m5"=>nil, "m6"=>676.0, "m7"=>678.0, "m8"=>345.0, "m9"=>34.0}, "p4"=>{"metric 1"=>4.0, "m2"=>9.0, "m3"=>4.0, "m4"=>234.0, "m5"=>2.0, "m6"=>567.0, "m7"=>567.0, "m8"=>45.0, "m9"=>45.0}, "p5"=>{"metric 1"=>5.0, "m2"=>0.0, "m3"=>34.0, "m4"=>234.0, "m5"=>2.0, "m6"=>567.0, "m7"=>345.0, "m8"=>567.0, "m9"=>56.0}, "p6"=>{"metric 1"=>6.0, "m2"=>-5.0, "m3"=>234.0, "m4"=>234.0, "m5"=>2.0, "m6"=>34.0, "m7"=>567.0, "m8"=>567.0, "m9"=>55.0}}} 
    @convert.to_hash.should eql hash_result
  end

  it "should trasform the the excel given sheet number and start row to a JSON object" do
    json_result = "{\"Sheet2\":{\"p1\":{\"metric 1\":1.0,\"m2\":6.0,\"m3\":23.0,\"m4\":56.0,\"m5\":56.0,\"m6\":4.0,\"m7\":3.0,\"m8\":345.0,\"m9\":76.0},\"p2\":{\"metric 1\":2.0,\"m2\":7.0,\"m3\":345.0,\"m4\":234.0,\"m5\":3.0,\"m6\":345.0,\"m7\":35.0,\"m8\":null,\"m9\":345.0},\"p3\":{\"metric 1\":3.0,\"m2\":8.0,\"m3\":6.0,\"m4\":234.0,\"m5\":null,\"m6\":676.0,\"m7\":678.0,\"m8\":345.0,\"m9\":34.0},\"p4\":{\"metric 1\":4.0,\"m2\":9.0,\"m3\":4.0,\"m4\":234.0,\"m5\":2.0,\"m6\":567.0,\"m7\":567.0,\"m8\":45.0,\"m9\":45.0},\"p5\":{\"metric 1\":5.0,\"m2\":0.0,\"m3\":34.0,\"m4\":234.0,\"m5\":2.0,\"m6\":567.0,\"m7\":345.0,\"m8\":567.0,\"m9\":56.0},\"p6\":{\"metric 1\":6.0,\"m2\":-5.0,\"m3\":234.0,\"m4\":234.0,\"m5\":2.0,\"m6\":34.0,\"m7\":567.0,\"m8\":567.0,\"m9\":55.0}}}" 
    @convert.to_json.should eql json_result
  end

end
