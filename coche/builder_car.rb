require_relative 'car'

class BuilderCar
  attr_accessor :car

  def initialize
    @car = Car.new
  end

  # @abstract
  # @return [Object]
  def builder_engine
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # @abstract
  def builder_bodywork
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end