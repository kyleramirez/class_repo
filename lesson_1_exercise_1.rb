our_file = File.open("data.txt")
person = eval(our_file.read)

puts "Current person's name is #{person[:name]}"
print "What should the new name be? "
old_persons_name = person[:name]
person[:name] = gets.chomp

puts "#{old_persons_name}'s last thought was \"#{person[:thought]}\""
print "What is #{person[:name]}'s last thought? "
person[:thought] = gets.chomp

puts person

new_file = File.open("data.txt", "w")
new_file.puts person
new_file.close