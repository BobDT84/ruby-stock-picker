def stock_picker(prices)
    buy_sell = []
    best_profit = 0
    prices.each_with_index do |price, index|
        if index < (prices.length - 1) 
            max = prices.slice((index+1)..-1).max #max of array of prices after current index
            if max-price > best_profit
                best_profit = max - price
                buy_sell = [index,prices.index(max)]
            end
        end
    end
    buy_sell
end

p stock_picker([17,3,6,9,15,8,6,1,10]) #=> [1,4]