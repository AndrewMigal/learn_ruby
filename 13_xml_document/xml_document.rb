class XmlDocument

  def method_missing(method, *args, &block)
    return "<#{method}>" + block.call + "</#{method}>" if block_given?
    str = ''
    if args[0].nil?
      return "<#{method}/>"
    else
      args[0].each { |key, value| str += " #{key}='#{value}'" }
      return "<#{method}#{str}/>"
    end
  end

end
