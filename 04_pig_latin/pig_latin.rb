def translate(st)
  st.split(' ').map do |s|
    s.sub(/^(qu|[^aioue]{1,})(\w+)$/, '\\2\\1') + 'ay'
  end.join(' ')
end
