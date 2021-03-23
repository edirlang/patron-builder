# frozen_string_literal: true
require_relative 'builder_car'

class CarAudi < BuilderCar
  def builder_engine
    @car.cylinder_capacity = 2995
    @car.potency = 300
  end

  def builder_bodywork
    @car.kind = 'Audi A7 Sportback 3.0 TFSI quattro S tronic 7 vel.'
    @car.number_chairs = 5
  end
end
