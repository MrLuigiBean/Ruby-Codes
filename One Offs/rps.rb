puts
puts "Welcome to the Rock, Paper, Scissors Simulator!"
puts

comnum=rand(1..3)
if comnum==1
	 comobj="rock"
elsif comnum==2
	 comobj="paper"
else
	 comobj="scissors"
end

print "What will you choose? "
userobj= gets.chomp.downcase
while userobj!= "rock" && userobj!= "paper" && userobj!= "scissors"
	 puts "Hey! Only 'rock','paper' or 'scissors'!"
	 puts
	 userobj= gets.chomp.downcase
end

puts
puts comobj
puts "VERSUS"
puts userobj
puts

if userobj== "rock"
	 usernum=1
elsif userobj== "paper"
	 usernum=2
else
	 usernum=3
end

determiner=usernum-comnum
if determiner==0
	 puts "You tied!"
elsif determiner==-1 || determiner==2
	 puts "You lost... :("
elsif determiner==1 || determiner==-2
	 puts "You won! :D"
end
