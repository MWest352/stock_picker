def stock_picker(prices)
  n = 1
  puts "Buy at #{prices.min} on day #{prices.index(prices.min)}"
  puts

  prices.each do 
    if prices.index(prices.sort[-n]) > prices.index(prices.min)
      puts prices.index(prices.sort[-n])
    elsif 
      prices.index(prices.sort[-n]) < prices.index(prices.min) 
      (n += 1) until prices.index(prices.sort[-n]) > prices.index(prices.min)
      
      puts "Sell on day #{prices.index(prices.sort[-n])} at #{prices.sort[-n]}"
      puts

      break
    end
  end
end


stock_picker([20,19,18,17,3,6,9,15,8])

stock_picker([ 14, 4, 5, 93, 2, 12, 72])
