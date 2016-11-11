# This is something I should do later

our_file = File.open("data.txt")
puts our_file.read
#############################################
our_file = File.open("data.txt", "w")
print "Enter the new contents of this file: "
our_file.write gets.chomp
our_file.close
#############################################
our_file = File.open("data.txt", "a+")
print "What would you like to add to your file? "
our_file.write "\n#{gets.chomp}"
our_file.close
#############################################
our_file = File.open("data_hash.txt")
person = eval(our_file.read)

puts "Current person's name is #{person[:name]}"
print "What should the new name be? "
person[:name] = gets.chomp

puts "#{person[:name]}'s last thought was \"#{person[:thought]}\""
print "What is the new last thought? "
person[:thought] = gets.chomp

puts person

new_file = File.open("data_hash.txt", "w")
new_file.puts person
new_file.close
############################################
Quality tenants pay rent on time and
take care of your property. To spot
a quality tenant, look for these five
attributes:

1. Ability to afford rent
2. Job Stability
3. Paid rent on time in the past
4. Clean criminal record
5. Responsible and timely
############################################
{ name: "Kyle", type: "human", thought: "I never know what's going on." }
