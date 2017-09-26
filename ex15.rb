
#ARGV allows you to name an input from the terminal.
#In this case the argument passed (name of the file) is saved in the variable filename.
filename = ARGV.first

#Here we are opening the file stored in filename and storing the contents of that file
#in the variable txt as a file object. We are using the open command.
txt = open(filename)

#Here we are calling the function read on our newly saved text file and printing it to the console.
puts "Here's your file #{filename}:"
print txt.read

#using stdin is another way of obtaining the file that we want to open.
#using $stdin.gets.chomp we can ask the user for the file name as an input.
#Then we can call the same commands on the file.
print "Type the filename again: "
file_again = $stdin.gets.chomp

#store the file in txt_again as a file object.
txt_again = open(file_again)

#now read the file object using the .read function and print the output to the console.
print txt_again.read
