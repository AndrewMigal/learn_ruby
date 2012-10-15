class Temperature
  def initialize(h)
    @fahrenheit, @celsius = h[:f], h[:c]
  end

  def self.from_celsius(t)
    Celsius.new(t)
  end

  def self.from_fahrenheit(t)
    Fahrenheit.new(t)
  end

  def in_fahrenheit
    @celsius.nil? ? @fahrenheit : @fahrenheit = @celsius * 9.0 / 5.0 + 32
  end

  def in_celsius
    @fahrenheit.nil? ? @celsius : @celsius = (@fahrenheit - 32) * 5 / 9
  end
end

class Fahrenheit < Temperature
  def initialize(t)
    @fahrenheit = t
  end
end

class Celsius < Temperature
  def initialize(t)
    @celsius = t
  end
end


