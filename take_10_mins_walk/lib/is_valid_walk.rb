require 'pry'

def is_valid_walk(walk)
  return false unless walk.count == 10
  store = {vert: 0, hor: 0}
  
  walk.each do |dir|
    case dir
    when 'n'
      store[:vert] += 1
    when 's'
      store[:vert] -= 1
    when 'e'
      store[:hor] += 1
    when 'w'
      store[:hor] -= 1
    end
  end
  store.values.all?(0)
end
