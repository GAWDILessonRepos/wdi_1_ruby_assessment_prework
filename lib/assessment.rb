# Question 1
# This function should take an integer as an argument
# and output a string that contains that integer that number of times in a row
# Do not use puts!
# For example:
# string_it_x_times(4) #=> "4444"
# string_it_x_times(2) #=> "22"
def string_it_x_times(x)
  out = ''
  for i in 1..x
    out = out + "#{x}"
  end
  return out
end

# Question 2
# This function should take an integer as an argument
# and will return the string of "fizz" if the number is divisible by 3,
# it will return "buzz" if it is divisible by 5,
# it will return "fizzbuzz" if it is divisible by 3 and 5
# and will return the original integer if it is divisible by neither
# Do not use puts!
# For example:
# fizz_or_buzz(3) #=> "fizz"
# fizz_or_buzz(10) #=> "buzz"
# fizz_or_buzz(15) #=> "fizzbuzz"
# fizz_or_buzz(2) #=> 2
def fizz_or_buzz(x)
  out = ''
  if x%3 == 0
    out = out + 'fizz'
  end
  if x%5 == 0
    out = out + 'buzz'
  end
  if x%3 !=0 && x%5 != 0
    out = x
  end
  return out
end

# Question 3
# This function should take an array and an element of any type
# The function should return the array, with the element inserted at the end
# Do not use puts!
# For example:
# add_element_to_array([1, 2], 3) #=> [1, 2, 3]
# add_element_to_array(['fizz', 'buzz'], 'baz') #=> ['fizz', 'buzz', 'baz']
def add_element_to_array(array, item)
  array << item
  return array
end



# BONUS QUESTION (optional)
# If you got the prior ones done, give this one a try.
# its a little bit harder, and isn't part of the core assessment
#
# This function should take two arguments that are either integers 2..10,
# or strings 'j', 'q', 'k', 'a' representing playing cards
# The function returns true if the sum of the values of the cards if 21,
# and false if it is any other number.
# The value of the 'j', 'q', 'k' is 10.
# The value of 'a' is 1 or 11, depending on what is more advantagous
# For example:
# blackjack?(10, 'a') #=> true
# blackjack?(5, 4) #=> false
def blackjack?(card_one, card_two)
  sum = 0
  sum1 = 0
  sum2 = 0
  if card_one == "j" || card_one == "q" || card_one == "k"
    sum += 10
  end

    test = Integer(card_one) rescue false
  if test == card_one.to_i
    sum += card_one.to_i
  end

  if card_two == "j" || card_one == "q" || card_one == "k"
    sum += 10
  end


   test2 = Integer(card_two) rescue false
   if test2 == card_two.to_i
     sum += card_two.to_i
   end



   if sum2 > 21
     sum = sum1
   else
     sum = sum2
   end

   if card_two == 'a'
     sum1 = sum + 1
     sum2 = sum + 11
      if sum2 > 21
        sum = sum1
      else
        sum = sum2
      end
   end

   if card_one == 'a' && card_two == 'a'
     sum = 12
   end

   if sum == 21
     return 'true'
   else
     return false
   end
 end
puts(blackjack?(10, 'a'))
