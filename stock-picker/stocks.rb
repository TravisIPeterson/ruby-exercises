def stock_picker(stocks)
    profit = 0
    buy_sell = Array.new
    stocks.each_with_index do |buy_day, x|
        stocks.each_with_index do |sell_day, y|
            if x < y
                potential_profit = sell_day - buy_day
                if potential_profit > profit
                    profit = potential_profit
                    buy_sell[0] = x + 1
                    buy_sell[1] = y + 1
                end
            end
        end
    end
    puts "Your maximum profit is #{profit}, which you can make by buying on day #{buy_sell[0]} and selling on day #{buy_sell[1]}."
end

stock_picker([17,3,6,9,15,8,6,1,10])