class Book
  attr_accessor :title

  def title
    bad_words = %w(and over the in of a an)
    c         = []
    @title.split(' ').each do |w|
      bad_words.include?(w) ? c.push(w) : c.push(w.capitalize)
    end
    c[0].capitalize!
    c.join(' ')
  end

end
