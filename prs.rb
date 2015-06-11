#  Player 1 

# pick paper rock scissors from a constant

# compare: paper > rock > scissors

# scissors > paper

# or

# tie if same then go again via loop#


SELECT = {'p' => 'paper', 'r' => 'rock', 's' => 'scissors'}

puts "lets play Rock Paper Scissors, it really rocks! Remember, Scissors cut paper, paper wraps rock, rock breaks scissors"

#as will apply time and again, a method is put in to define actions  for the several different outcomes as per DRY rather than iterating code#

def show_winning_outcome(winning_pick)
  case winning_pick
  when 'p'
   puts 'paper wraps rock!'

  when 'r'
   puts 'rock bluntens scissors'

  when 's'
   puts 'scissors cut paper'

  end
end

loop do 
 #player makes a pick, computer makes a pick#
begin
  puts "take your pick (r, p, s)"
  player_pick = gets.chomp.downcase
  end until SELECT.keys.include?(player_pick)

#the above chunk of code lines 40-42 take an array and select from it the specific keys required#

#computer makes a pick via sample#
computer_pick = SELECT.keys.sample
  puts "the computer selected #{computer_pick}" #my own string interpolation#
#conditionals and if elsif else block#

if player_pick == computer_pick
  puts "its a tie!!"
elsif (player_pick == 'p' && computer_pick == 'r') || (player_pick == 'r'  && computer_pick == 's' ) || (player_pick == 's' && computer_pick == 'p')

  #method call#
  show_winning_outcome(player_pick)

  puts "you win!!"

else (player_pick == 'p' && computer_pick == 's') || (player_pick =='s'  && computer_pick == 'r' ) || ( player_pick == 's' && computer_pick == 'p')
  
  #method call#
  show_winning_outcome(computer_pick)
  
  puts "you lost!!"

  #dissect these conditionals some more and revisit#

end

puts "Play again? (y/n) "
  break if gets.chomp.downcase != 'y'

end

puts "Have a great day, it was good to play!"