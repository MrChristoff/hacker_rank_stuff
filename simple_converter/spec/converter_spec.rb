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
    celsius = 10
    kelvin = 283.15
    fahrenheit = 50
    p celsius

    it "converts 'celsius' to 'kelvin'" do
      expect(converter.convert_temp(celsius, input_scale: 'celsius', output_scale: 'kelvin')).to eq(kelvin)
    end
    it "converts 'kelvin' to 'celsius'" do
      expect(converter.convert_temp(kelvin, input_scale: 'kelvin', output_scale: 'celsius')).to eq(celsius)
    end
    it "converts 'celsius' to 'fahrenheit'" do
      expect(converter.convert_temp(celsius, input_scale: 'celsius', output_scale: 'fahrenheit')).to eq(fahrenheit)
    end
    it "converts 'fahrenheit' to 'celsius'" do
      expect(converter.convert_temp(fahrenheit, input_scale: 'fahrenheit', output_scale: 'celsius')).to eq(celsius)
    end
    it "converts 'fahrenheit' to 'kelvin'" do
      expect(converter.convert_temp(fahrenheit, input_scale: 'fahrenheit', output_scale: 'kelvin')).to eq(kelvin)
    end
    it "converts 'kelvin' to 'fahrenheit'" do
      expect(converter.convert_temp(kelvin, input_scale: 'kelvin', output_scale: 'fahrenheit')).to eq(fahrenheit)
    end
  end
end
