#since sor us to get user input we have to use a terminal thus i created a new File
#to run it on the terminal
puts "enter your name:"
name = gets
puts ("hello " + name)

#when you enter any a value into ruby it converts it into a string
puts "enter a number: "
num_1 = gets.chomp()
puts "enter another number:"
num_2 = gets.chomp()
puts ( num_1.to_i + num_2.to_i)
