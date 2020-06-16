def max_profit(prices)
    max = 0
    min = 0
    profit = 0
    
    prices.each_with_index  do |price,i|
        if i == 0 || price < min
         max = price
         min = price
        end
        
        if price > max
            max = price
            profit = max - min if max-min > profit
        end
    end
   profit 
end