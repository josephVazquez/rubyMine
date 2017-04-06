def greet(greeting)
  puts "#{greeting} Grandma!"
end

# my_greeting = gets.chomp
# greet(my_greeting )


def greet_again
  puts "Hello!"
  print "Greet Again? (y/n)"
  answer = gets.chomp
  case answer
    when "n"
      puts "Ok, Goodbye!"
    when "y"
      greet_again
    else
      "Ok, Goodbye!"
  end
end

greet_again