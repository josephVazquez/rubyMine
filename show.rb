$filename = "data.txt"

def show_menu
  puts "Select an option"
  puts "1-read file"
  puts "2-write file"
  puts "3-append to file"
  puts "4-delete file"
  puts
  print "ENTER OPTION > "
  menu_option = gets.to_i
  case menu_option
    when 1
      read
    when 2
      puts
      print "Enter text to write > "
      the_text = gets.chomp
      write(the_text)
    when 3
      puts
      print "Enter text to write > "
      the_text = gets.chomp
      append(the_text)
    when 4
      File.delete($filename)
      show_menu
  end


end


def read

  if File.exists?($filename)
  file = File.open($filename, "r")
  data = file.read
  file.close
  puts data
    show_menu
  else
    puts "*** File Does Not Exist"
    end
end

def write (save_data)
  file = File.open($filename, "w")
  file.puts save_data
  file.close
  show_menu
end

def append(save_data)
  file = File.open($filename, "a")
  file.puts save_data
  file.close
  show_menu
end

show_menu
