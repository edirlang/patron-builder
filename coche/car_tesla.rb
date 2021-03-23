# frozen_string_literal: true
require_relative 'builder_car'

class CarTesla < BuilderCar
  def builder_engine
    @car.potency = 560
  end

  def builder_bodywork
    @car.kind = 'Tesla Model S'
    @car.number_chairs = 5
  end
end
