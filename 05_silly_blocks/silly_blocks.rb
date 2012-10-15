def reverser(&b)
  str = b.call
  str.split.map { |word| word.reverse }.join(' ')
end

def adder(n = 1)
  yield + n
end

def repeater(n = 1)
  n.times { yield }
end



