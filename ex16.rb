#Learn Ruby the Hard Way - Ex 16

#Here we are using ARGV to obtain an argument
#In this case it is the name of the text file we want to delete.
#The file is being saved in the variable filename.
filename = ARGV.first

#We ask the user to confirm that they want to continue.
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

#.gets doesn't remove the trailing line.
$stdin.gets

#Open the file and save it as a file object in the variable target.
#the 'w' makes the file write only.
puts "Opening the file..."
target = open(filename, 'w')

#Truncate the file to (argument) bytes long. In this case zero bytes.
puts "Truncating the file.  Goodbye!"
target.truncate(0)

#ask for three new lines of code to be saved in the respective variables.
puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

#Write the new lines into the file - \n generates a new line to
#be written to.
puts "I'm going to write these to the file."

#write all of the lines into the file using one line of code. <3
target.write("#{line1}\n#{line2}\n#{line3}\n")

#Close the file. Don't leave it open n00b.
puts "And finally, we close it."
target.close
