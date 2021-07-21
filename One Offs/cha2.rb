def greet #welcome the player
	 puts
	 puts "Welcome to the Cha Simulator!"
	 print "Would you like to read the rules?(Yes/No): "
	 a=gets.chomp.downcase
end

def printrules(a) #gives out rules
	 if a=="yes" ||a== "y"
		 puts
		 puts "The objective of the game is to defeat the computer player's 'Hands'."
		 puts
		 puts "Attacks on Hands oscillate between players. This means that after your turn in the attacking phase, it will be the computer player's turn to attack."
		 puts
		 puts "The attacks are as follows: stone beats gun, gun beats man and man beats stone."
		 puts
		 puts "All the best!"
		 puts
		 print "Are you ready?(Yes/No): "
		 b=gets.chomp.downcase
	 else
		 puts
		 print "Alrighty, hotshot. You game?(Yes/No): "
		 b=gets.chomp.downcase
	 end
end

def match?(a,b) #identifies matching stuff
	 if a==b
		 return true
	 else 
		 return false
	 end
end

def spacer(x) #makes "gun" into " gun "
	 if x== "man"
		 x=" man "
	 elsif x== "gun"
		 x=" gun "
	 else
		 x=x
	 end
end

def youstart? #sees if you start ,returns it
	 x= rand(2)
	 if x==0
		 puts
		 puts "You attack first!"
		 return true
	 else
		 puts
		 puts "Computer Player attacks first!"
		 return false
	 end
end

def valid?(x)  #makes "Gun" into " gun " and ensures proper choices
	 while x.downcase != "stone" && x.downcase != " man " && x.downcase != " gun "
		 puts
		 puts "Hey! Only 'stone','man' or 'gun' are proper terms!"
		 print "Now, what will your Hand be? "
		 x=spacer(gets.chomp)
	 end
	 return x
end

def genwhat #generates what for com Hands
	 x=rand(3)
	 case x
	 when 0
		 return " man "
	 when 1
		 return " gun "
	 when 2
		 return "stone"
	 end
end

class Hand
	 attr_accessor :alive, :what	 
	 def initialize(what) 
		 @alive=true
		 @what=valid?(spacer(what.chomp)) 
	 end
	 
	 def kill?(other) #true if attack successful, nil otherwise
		 killcheck= (self.what=="stone" && other.what==" gun ") || (self.what==" gun " && other.what==" man ") || (self.what==" man " && other.what=="stone")
		 return true if killcheck==true
	 end
	 
end

def vsdisp(x1, x2, y1, y2, n, start) #displays turn and Hand info
	 puts
	 n+=1 
	 if n <10
		 puts "      TURN 0#{n}      "
	 else 
		 puts "      TURN #{n}      "
	 end
	 
	 if match?(start==true, n%2==1)
		 puts "    You attack!    "
	 else
		 puts " Com is attacking! "
	 end
	 
	 puts
	 puts "You: #{x1}   #{x2}"
	 puts
	 puts "        AGAINST    "
	 puts
	 puts "Com: #{y1}   #{y2}"
	 puts
end
 
def hitit #le game
	 com1=Hand.new(genwhat)
	 com2=Hand.new(genwhat)
	 print "What will your first hand be? "
	 you1=Hand.new(gets)
	 puts
	 print "What will your second hand be? "
	 you2=Hand.new(gets)	 
	 $Start=youstart?
	 $n=0
	 
	 vsdisp(you1.what, you2.what, com1.what, com2.what, $n, $Start)
	 #if either wins on turn 01, say "INSTAKILL!!!"
end

def vs(you1what, you2what, com1what, com2what, n, start)
	 puts you1what
	 #puts b.kill?(a)
end

case printrules(greet)
when "no", "n"
	  puts "THEN GIT."
else
	 puts "Sweet, let's go!"
	 puts
	 hitit #game starts here
	 vs
end