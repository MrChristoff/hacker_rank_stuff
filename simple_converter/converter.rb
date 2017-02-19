class SimpleConverter

  def convert_temp(num, input_scale:, output_scale: 'celsius')
    case
    when input_scale == 'celsius' && output_scale == 'kelvin'
      celsius_to_kelvin(num)
    when input_scale == 'kelvin' && output_scale == 'celsius'
      num - 273.15
    when input_scale == 'celsius' && output_scale == 'fahrenheit'
      (num * 1.8) + 32
    when input_scale == 'fahrenheit' && output_scale == 'celsius'
      (num - 32) / 1.8
    when input_scale == 'fahrenheit' && output_scale == 'kelvin'
      (num + 459.67) * 5/9
    when input_scale == 'kelvin' && output_scale == 'fahrenheit'
      ((num * 9/5) - 459.67).round
    else
      "Not a valid conversion"
    end
  end

  def celsius_to_kelvin(num)
    num + 273.15
  end

end
