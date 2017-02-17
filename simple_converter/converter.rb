class SimpleConverter

  def convert_temp(num, input_scale:, output_scale: 'celsius')
    case
    when input_scale == 'celsius' && output_scale == 'kelvin'
      num + 273.15
    else
      "Not a valid conversion"
    end
  end

end
