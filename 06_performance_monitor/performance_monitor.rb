def measure(number = 1)
  time_interval = 0
  number.times do
    time_before = Time.now()
    yield
    time_after = Time.now()
    time_interval += time_after - time_before
  end
  time_interval / number
end
