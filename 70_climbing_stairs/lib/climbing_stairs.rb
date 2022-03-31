require 'pry'

# @param {Integer} n
# @return {Integer}

# def climb_stairs(n)
#   res = [0, 1] # 0, 1, 1, 2, 3
#   n.times do
#     res << (res[-1] + res[-2])
#   end
#   res.last
# end

def climb_stairs(n)
  store = {}
  
  return fib(n - 1, store) + fib(n - 2, store)
end

def fib(n, store)
  return 1 if n == 1 || n == 0
  return store[n] if store[n]
  
  store[n - 1] = fib(n - 1, store)
  store[n - 2] = fib(n - 2, store)
  return store[n - 1] + store[n - 2]
end
