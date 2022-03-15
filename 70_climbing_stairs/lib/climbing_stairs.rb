require 'pry'

# @param {Integer} n
# @return {Integer}

def climb_stairs(n)
  res = [0, 1]
  n.times do
      res << (res[-1] + res[-2])
  end
  res.last
end
