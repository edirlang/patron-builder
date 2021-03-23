# frozen_string_literal: true
require_relative 'builder_car'

class CarBmw < BuilderCar
  def builder_engine
    @car.cylinder_capacity = 4395
    @car.potency = 560
  end

  def builder_bodywork
    @car.kind = 'BMW Serie 5 2016'
    @car.number_chairs = 5
  end
end
