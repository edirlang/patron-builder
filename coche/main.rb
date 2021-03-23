require_relative 'concessionaire'
require_relative 'builder_car'
require_relative 'car_audi'
require_relative 'car_bmw'
require_relative 'car_tesla'

director = Concessionaire.new

loop do
  puts 'Que tipo de carro deseas construir'
  puts '1 - Audi'
  puts '2 - BMW'
  puts '3 - Tesla'
  puts '0 - Salir'
  print 'Elige una opcion: '
  option = gets.chomp

  case option
  when '1'
    director.builder_car = CarAudi.new
  when '2'
    director.builder_car = CarBmw.new
  when '3'
    director.builder_car = CarTesla.new
  when '0'
    break
  else
    puts 'Operación no reconocida'
  end

  director.builder_new_car
  20.times { print '=' }
  puts 'Vehiculo construido'
  puts "Tipo de vehiculo: #{director.car.kind}"
  puts "Cilindraje: #{director.car.cylinder_capacity}"
  puts "Potencia: #{director.car.potency}"
  puts "# de Pasajeros: #{director.car.number_chairs}"
  20.times { print '=' }
  puts ''
end
puts 'Gracias por utilizar este constructor'