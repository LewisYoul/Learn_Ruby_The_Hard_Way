#File for Ex16 - question 2

#obtain the filename as an argument upon input in the terminal.
#save it in filename.
filename = ARGV.first

#save the file object in text.
text = open(filename)

#print the contents of the file to the console.
puts "Here is the contents of the file - #{filename}:"
print text.read
