class Dictionary
  def initialize
    @entries = Hash.new {}
  end

  attr_accessor :entries

  def add(some_hash)
    if some_hash.is_a?(Hash)
      @entries.merge!(some_hash)
    end
    if some_hash.is_a?(String)
      @entries.merge!(some_hash => nil)
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(h)
    @entries.has_key?(h)
  end

  def find(w)
    res = {}
    @entries.each do |k, v|
      if k.include?(w)
        res.merge!(k => v)
      end
    end
    res
  end

  def printable
    prnt = []
    @entries.each { |k, v| prnt.push("[#{k}]" " \"#{v}" '"') }
    prnt.sort!.join("\n")
  end
end
