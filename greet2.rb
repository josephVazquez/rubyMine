name = "Jimmy Joe Bob"

puts name
puts name[1]
puts name[3,5]

 # String Search? //Find and replace
puts name['Joe'] = 'Bubba'
puts name

puts "Freddy B"['eddy']

my_array = ["Harry", 15, true]

my_array.each do |x|

  print "#{x}"

end


puts
puts my_array[0]
puts

my_2d_array = [["Bob", 26, false], ["Sally", 24, true]]

my_2d_array.each do |x|
  x.each do |y|
     print "#{y}"
  end
  puts
end

puts my_2d_array[1][1]

array1 = []
print array1
puts


array2 = Array.new(5)
print array2
puts

array3 = Array.new(5){"Whatever"}
print array3
puts

array4 = Array.new(3){Array.new(3){0}}
print array4
puts

array5 = %w(This will split up words into elements)
print array5
puts

my_name = "Schubert"
array6 = %W(My name is #{my_name})
print array6
puts

array7 = ["Bob", "Sally", "Harry", "Jim", "Suzette"]
puts array7.empty?
puts array7.size
puts array7[-1]
puts array7[1..3]
puts
print array7.map{ |v| " Hello " + v}
puts
print array7.select{ |i| i.size == 5 }
puts
print arra7.select{ |i| i[0] == "S" && i[1] == "a"}
puts

array8 = array7[1..3].map(&:clone)
print array8
puts

array7.sort!
print array7
puts
puts
puts
puts