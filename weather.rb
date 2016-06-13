require "barometer"


puts "What is your zipcode?"
location = gets.chomp


barometer = Barometer.new(location)
weather = barometer.measure
puts weather.current.temperature.imperial
puts weather.current.condition
puts weather.current.icon
tomorrow = Time.now.strftime("%d").to_i + 1
puts tomorrow
puts "Today's weather is " + weather.current.condition
puts "Tomorrow, the weather will be " + weather.tomorrow.icon

weather.forecast.each do |forecast|

    puts "On " + forecast.ends_at.strftime("%A") + ", the weather will be "+forecast.icon + " with a high of " + forecast.high + " and a low of " + forecast.low + "."

end

