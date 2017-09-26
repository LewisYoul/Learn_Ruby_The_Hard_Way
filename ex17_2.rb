file1, file2 = ARGV

puts "#{file1} is #{open(file1).read.length} bytes long."
puts "We are going to copy from #{file1} to #{file2}."
puts "RETURN to proceed, CTRL^C to cancel."

$stdin.gets

puts "Does the input file exist? #{File.exist?(file2)}"

open(file2, 'w').write(open(file1).read)

puts "Copying..."
puts "Alright, done."
