require_relative '../lib/best_time_to_buy_and_sell_stock'

RSpec.describe 'Best time to buy and sell stock' do
  it 'returns the maximum profit when give stock over a set of days prices' do
    prices = [7, 1, 5, 3, 6, 4]

    expect(max_profit(prices)).to eq(5)
  end

  it 'returns the maximum profit when give stock over a set of days prices' do
    prices = [7, 6, 4, 3, 1]

    expect(max_profit(prices)).to eq(0)
  end
end
