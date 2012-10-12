def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(array)
	sum = array.inject(0, &:+) 
	#array.each { |a| sum+=a }
	#return sum
end

def multiply(array)
	multiply = array.inject(1, &:*)

end

def power(a,b)
	a ** b
end

def factorial(num)
	factorial = (1..num).inject(1, &:*)
end
