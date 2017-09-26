#This is the first time I have come across "ARGV".
#It is known as the argument variable

first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts ""
puts "Please enter a fourth variable:"
fourth = STDIN.gets.chomp
puts "Your fourth variable is: #{fourth}"
