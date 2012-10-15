class Book
  attr_accessor :title

  def title
    bad_words = %w(and over the in of a an)
    @title.capitalize.split.inject { |r, e| r + " " + (bad_words.include?(e) ? e : e.capitalize) }
  end

end
