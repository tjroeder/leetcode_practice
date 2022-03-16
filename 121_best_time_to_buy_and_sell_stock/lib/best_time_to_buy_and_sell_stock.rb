require 'pry'

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  min_price = prices[0]

  prices.each_index do |i|
    min_price = [min_price, prices[i]].min
    max_profit = [max_profit, prices[i] - min_price].max
  end
  max_profit
end
