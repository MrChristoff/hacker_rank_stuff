require_relative '../converter.rb'

describe "Simple converter" do
  describe "Converter input" do
    let (:converter) {SimpleConverter.new}

    it "responds expects two arguments" do
      expect(converter).to respond_to(:convert_temp)

    end
  end
end
