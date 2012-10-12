class Book
	#
	
	def title
		@title
	end

	def title=(new_title)
		@title = new_title
	end
	
	def title
		bad_words = %w(and over the in of a an)
		c = []
		@title.split(" ").each do|w| 
		 if bad_words.include?(w) then
		 	c.push(w)
		 else
			c.push(w.capitalize)
		 end
		end
		c[0].capitalize!
		c.join(" ")
		
	end
end