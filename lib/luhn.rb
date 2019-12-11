module Luhn
    def self.is_valid?(number)
      #WRITE YOUR SOLUTION HERE
      number = number.to_s.split("").map{|char| char.to_i}
      len = number.length-1
      count = 0
      flip = false
      if len%2 !=0
        flip = true
      end
      for i in 0...number.length do
        if (len-i)%2 == 0 && flip || (len-i)%2 != 0 && !flip
            
            number[len-i]= number[len-i]*2
            if number[len-i] >=10
                number[len-i] = number[len-i] - 9
            end
            
            count += number[len-i]
        else
            
            count += number[len-i]
        end
      end
      return count%10==0
    end
end

