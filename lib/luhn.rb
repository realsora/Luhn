module Luhn
  def self.is_valid?(card_number)
    #Step 1 : split the credit card number into its individual digits
    num_to_dig = card_number.to_s.split(//)

    nums = Array.new

    num_to_dig.each do |str|
      nums <<str.to_i
    end

    #step 2: start from the right
    nums.reverse!

    sum = 0

    #Double every second digit
    nums.each.with_index(1) do |n,i|
      if i % 2== 0
        d = n * 2 > 9 ? n * 2 - 9 : n *2
        else 
          d = n 
      end
      sum += d 
    end
    # if the sum is divisible by 10, it's valid number
    (sum % 10) == 0

    end
end