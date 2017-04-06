counter = gets.to_i

case counter
 when 1
 puts "Counter is one"
    counter += 1
 when 2
 puts "Counter is two"
    counter += 1
  when 3
    puts "Counter is three"
    counter += 1
  else
    puts "I have no idea what counter is"
    counter += 1
end

message = case counter
            when 1
            "one"
            when 2
              "two"
            when 3
              "three"
            else
              "a really big number"
          end
puts message



