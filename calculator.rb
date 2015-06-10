puts "this is a special three numbered calculator. please enter your first number"

n1 = gets.chomp.to_i

puts "Please enter your next number"

n2 = gets.chomp.to_i

#additional code for fun could be to ask if a third number is required#

puts "Enter your third number?" 

n3 = gets.chomp.to_i 

puts "what do you wish to do with these entries? multiply, add, divide or subtract them?"

input1 = gets.chomp

if input1 == "multiply" 

result = n1 * n2 * n3

puts result

elsif input1 == "add" 

result = n1 + n2 + n3

puts result

elsif input1 == "divide" 

result = n1 / n2 / n3

puts result

else input1 == "subtract" 
# this else input makes subtract the default if no other operator is selected #
result = n1 - n2 - n3

puts result

end
