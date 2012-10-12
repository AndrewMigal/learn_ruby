class RPNCalculator
	attr_accessor :value
	def initialize
		@calculator = []
		@value = []
	end
	
	def push(v)
		@calculator.push(v)
	end
	
	def plus
		raise "calculator is empty" if @calculator.empty?
		@value = @calculator.pop(2).inject(0, &:+)
		@calculator.push(@value)
		

	end

	def minus
		raise "calculator is empty" if @calculator.empty?
		@value = @calculator.pop(2)
		@value = @value.last - @value.first
		@calculator.push(@value)

	end

	def divide
		raise "calculator is empty" if @calculator.empty?
		@value = @calculator.pop(2)
		@value = @value.last.to_f / @value.first.to_f
		@calculator.push(@value)
	end

	def times
		raise "calculator is empty" if @calculator.empty?
		@value = @calculator.pop(2).inject(1, &:*)
		@calculator.push(@value)
	end

	def tokens(st)
		st.split.map do |s|
			if s =~ /\d+/ 
				then s.to_i 
			else 
				s.to_sym
			end
		end
	end

	def evaluate(st)
		st.split.map do |s|
			
			case s
			when /\d+/
				push(s.to_i)
			when "+" 
				plus
			when "-"
				minus
			when "*" 
				times
			when "/"
				divide
			end
		end	
		@calculator.pop
	end
end