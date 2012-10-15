def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(str, count=2)
  ((str << ' ')*count).chop
end

def start_of_word(w, n)
  w[0...n]
end

def first_word(s)
  s.split(' ')[0]
end

def titleize(s)
  s.capitalize.split.inject { |r, e| r + " " + (%w(and over the in of).include?(e) ? e : e.capitalize) }
end
