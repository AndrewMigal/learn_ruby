class Timer
  def initialize
    @seconds = 0
  end

  attr_accessor :seconds

  def time_string
    r = [0, 0, 0]
    s = @seconds
    2.downto(0) do |i|
      r[i] += s % 60
      s = s / 60
    end
    r.map { |el| sprintf('%02d', el) }.join(':')
  end

end
