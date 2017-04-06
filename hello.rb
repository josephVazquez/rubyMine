puts "1. Hello World!"
print "2. Hello "
print "World! \n"
p '3. Hello World!'

x = "4. Hello World!"
puts x

# Ruby likes to interpret statements as expressions

x = 11
message = if x > 10
            "5. Hello World!"
          else
            "It's the end of the world as we know it."
          end
puts message

# variables are not really objects
# they are passed by reference
x = "6. Hello World!"

y = x
y.upcase!
puts x


x = "7. Hello World!"
y = x.clone
y.upcase!
puts y
puts x

class MyClass
  def initialize
    puts "8. Hello World!"
  end
end

a_class = MyClass.new

class WorldGreeter
  def set_a_number(my_num)
    @my_num = my_num
    say_hello
  end
  def say_hello
    puts @my_num.to_s + '. Hello World!'
  end
end

my_greeter = WorldGreeter.new
my_greeter.set_a_number(9)

i = 10
while i <= 12
  my_greeter.set_a_number(i)
  # ++ is too complex for Ruby?? So use += increments
  i += 1
end

i = 13
until i > 15
  my_greeter.set_a_number(i)
  i += 1
end

for i in 16..19
  my_greeter.set_a_number(i)
end

ary = [20, 21, 22]
ary.each do |i|
  my_greeter.set_a_number(i)
end

i = 23
loop do
  my_greeter.set_a_number(i)
  i += 1
  break if i >= 26
end

26.upto(29) do |i|
  my_greeter.set_a_number(i)
end

30.step(32, 1) do |i|
  my_greeter.set_a_number(i)
end

i = 33
5.times do
  my_greeter.set_a_number(i)
  i += 1
end