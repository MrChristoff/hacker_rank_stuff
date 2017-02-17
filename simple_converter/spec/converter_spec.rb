require_relative '../converter.rb'

describe "Simple converter" do
  describe "Converter input" do
    let (:converter) {SimpleConverter.new}

    it "responds to #convert_temp" do
      expect(converter).to respond_to(:convert_temp)
    end
  end
  describe "Conversions" do
    let (:converter) {SimpleConverter.new}

    it "converts 'celsius' to 'kelvin'" do
      expect(converter.convert_temp(10, input_scale: 'celsius', output_scale: 'kelvin')).to eq(283.15)
    end
    it "converts 'celsius' to 'fahrenheit'" do
      expect(converter.convert_temp(10, input_scale: 'celsius', output_scale: 'fahrenheit')).to eq(50)
    end
  end
end
