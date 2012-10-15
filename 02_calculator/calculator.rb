def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.inject(0, &:+)
end

def multiply(array)
  array.inject(1, &:*)
end

def power(a, b)
  a**b
end

def factorial(num)
  (1..num).inject(1, &:*)
end
