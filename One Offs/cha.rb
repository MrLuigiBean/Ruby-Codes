def xnor(a,b)
	 if a==b
		 x=true
	 else 
		 x=false
	 end
end

def check(hand)
	 while hand.downcase != "stone" && hand.downcase != "man" && hand.downcase != "gun"
		 puts "Hey! Only 'stone','man' or 'gun' are proper terms!"
		 puts
		 print "What will your hand be now? "
		 hand=gets.chomp		 
	 end
	 hand=hand.downcase
end

def spacer(input)
	 if input== "man"
		 input=" man "
	 elsif input== "gun"
		 input=" gun "
	 else
		 input=input
	 end
end

def make_hands
	 n=rand(1..3)
	 if n==1
	 	 obj="stone"
	 elsif n==2
	 	 obj="man"
	 else
	 	 obj="gun"
	 end
end

def coinflip
	 start= rand(1..2)
	 youstart= start==1
	 if youstart==true
		 puts "You attack first!"
		 youstart=true
	 else
		 puts "Computer Player attacks first!"
		 youstart=false
	 end
end

def versus(you1, you2, com1, com2, turn, youstart)
	 puts
	 if turn.to_i<10
		 turn= "0"+turn.to_s
	 end
	 puts "      TURN #{turn}      "
	 if xnor((turn.to_i%2) ==1, youstart)
		 puts "    You attack!    "
	 else 
		 puts " Com is attacking! "
	 end
	 puts
	 puts "You: #{spacer(you1)} & #{spacer(you2)}"
	 puts
	 puts "        AGAINST    "
	 puts
	 puts "Com: #{spacer(com1)} & #{spacer(com2)}"
end

def thegame
	 $you1alive=true
	 $you2alive=true
	 $com1alive=true
	 $com2alive=true
	 youstart=coinflip
	 $turn=1

	 print "What will your first hand be? "
	 you1=gets.chomp
	 you1=check(you1)
	 puts
	 print "What will your second hand be? "
	 you2=gets.chomp
	 you2=check(you2)
	 com1=make_hands
	 com2=make_hands
	 
	 versus(you1, you2, com1, com2, $turn, youstart)
	 $turn+=1
end

def gamestart(x)
	 if x=="no" || x=="n"
		 puts
		 puts "Alright...come back when you are!"
		 puts
	 else
		 puts "Let the game begin!"
		 puts
		 thegame
	 end
end

def instructions(x)
	 if x=="yes" || x=="y"
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
		 ready=gets.chomp
		 ready=ready.downcase
	 else
		 puts
		 print "Alrighty, hotshot. You game?(Yes/No): "
		 ready=gets.chomp
		 ready=ready.downcase
	 end
end

puts
puts "Welcome to the Cha Simulator!"
print "Would you like to read the rules?(Yes/No): "

rules=gets.chomp.downcase
ready=instructions(rules)

gamestart(ready)