def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(str, count=2)
  ("#{str} "*count).chop
end

def start_of_word(w, n)
  w[0...n]
end

def first_word(s)
  s.split(' ')[0]
end

def titleize(s)
  bad_words = %w(and over the in of)
  c = []
  s.split(" ").each do |w|
    bad_words.include?(w) ? c.push(w) : c.push(w.capitalize!)
  end
  c[0].capitalize!
  c.join(' ')
end
