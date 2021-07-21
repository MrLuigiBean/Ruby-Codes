def genwhat #generates what for com Hands
	 x=rand(3)
	 case x
	 when 0
		 return "rock"
	 when 1
		 return "paper"
	 when 2
		 return "scissors"
	 end
end

def valid?(x)  #ensures proper choices
	 while x.downcase != "rock" && x.downcase != "paper" && x.downcase != "scissors"
		 puts
		 puts "Hey! Only 'rock','paper' or 'scissors' are proper terms!"
		 print "Now, what will your Hand be? "
		 x=gets.chomp
	 end
	 return x
end

class Hand
	 attr_accessor :alive, :what	 
	 def initialize(what) 
		 @alive=true
		 @what=valid?((what.chomp)) 
	 end
	 
	 def kill?(other)
		 killcheck= (self.what=="rock" && other.what=="scissors") || (self.what=="scissors" && other.what=="paper") || (self.what=="paper" && other.what=="rock")
		 matchcheck= self.what==other.what
		 
		 if killcheck
			 return true
		 elsif matchcheck
			 return nil
		 else
			 return false
		 end
	 end
end

com1=Hand.new(genwhat)
you1=Hand.new(gets.chomp)

puts
puts you1.what
puts "VERSUS"
puts com1.what
puts

if you1.kill?(com1)==nil
	 print "You tied."
else
	 (you1.kill?(com1))?(print "You win!"):(print "You lose...")
end
