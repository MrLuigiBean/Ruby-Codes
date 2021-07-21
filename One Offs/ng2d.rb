char1= 10*rand(0..9)
char2= rand(0..9)
goal= char1 + char2
puts "Number generated!(from 00 to 99)"

print "What's your guess?: "
guess=gets.to_i
counter=1

while guess!=goal
	 puts
	 puts "Sorry. Try again!"
	 if guess > goal
		 puts "Go smaller!"
	 else guess < goal
		 puts "Go bigger!"
	 end
	 puts
	 print "What's your guess?: "
	 guess=gets.to_i
	 counter+=1
end

puts "You did it!"
print "You took " + counter.to_s + " guesses!"