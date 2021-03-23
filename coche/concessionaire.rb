class Concessionaire
  # builde_car :BuilderCar
  attr_accessor :builder_car

  def initialize
    self.builder_car = nil
  end

  def car
    builder_car.car
  end

  def builder_new_car
    puts self.builder_car

    self.builder_car.builder_engine
    self.builder_car.builder_bodywork
  end
end