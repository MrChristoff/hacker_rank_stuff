class SimpleConverter

  def convert_temp(num, input_scale:, output_scale: 'celsius')
    case
    when input_scale == 'celsius' && output_scale == 'kelvin'
      celsius_to_kelvin(num)
    when input_scale == 'kelvin' && output_scale == 'celsius'
      kelvin_to_celsius(num)
    when input_scale == 'celsius' && output_scale == 'fahrenheit'
      celsius_to_fahrenheit(num)
    when input_scale == 'fahrenheit' && output_scale == 'celsius'
      fahrenheit_to_celsius(num)
    when input_scale == 'fahrenheit' && output_scale == 'kelvin'
      fahrenheit_to_kelvin(num)
    when input_scale == 'kelvin' && output_scale == 'fahrenheit'
      kelvin_to_fahrenheit(num)
    else
      "Not a valid conversion"
    end
  end

  def celsius_to_kelvin(num)
    num + 273.15
  end

  def kelvin_to_celsius(num)
    num - 273.15
  end

  def celsius_to_fahrenheit(num)
    (num * 1.8) + 32
  end

  def fahrenheit_to_celsius(num)
    (num - 32) / 1.8
  end

  def fahrenheit_to_kelvin(num)
    (num + 459.67) * 5/9
  end

  def kelvin_to_fahrenheit(num)
    ((num * 9/5) - 459.67).round
  end

end
