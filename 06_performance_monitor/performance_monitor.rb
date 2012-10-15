def measure(n=1)
  t = 0
  n.times do
    a = Time.now()
    yield
    b = Time.now()
    t += b - a
  end
  t / n
end
