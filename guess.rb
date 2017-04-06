$guessCount = 0


def run_game

  $guessCount = 0
  x = rand(100) + 1
  puts x
  k = 0
  while(k < 1)
  answer = gets.to_i
  puts answer

  if answer > x && answer <= 100
      puts "Too High!"
      $guessCount += 1

  elsif answer < x && answer > 0
    puts "Too Low!"
    $guessCount += 1


    elsif answer < x && answer == 0
    puts "Please enter a number between 1-100"
  elsif answer > x && answer > 100
    puts "Please enter a number between 1-100"
    elsif answer = x
      puts "You Win!"
      $guessCount +=  1
      k = 1
      puts "It took you " + "#{$guessCount}" + " tries!"
      break
    end

  end


end


def menu
i = 1
while(i > 0)

  puts "Would You Like to Play the Guessing Game?(Y/N)"
  p = 1
  while p == 1
  startGame = gets.chomp
  case startGame
    when "y"
      puts "Last Score! : " + "#{$guessCount}"
    run_game

      p = 0
  when "n"
    puts "GoodBye!"
    i = -1

      break
    else
      puts "Please enter Y or N!"

  end
  end
end
end

menu