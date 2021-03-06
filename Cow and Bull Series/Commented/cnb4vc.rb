def pick_random_line
	 File.readlines("words4.txt").sample
	 # PREVIOUS METHOD
	 # chosen_line = nil
	 # File.foreach("words4.txt").each_with_index do |line, number|
	 # chosen_line = line if rand < 1.0/(number+1)
	 # end
	 # return chosen_line
end
goal=pick_random_line.chomp

def verify_guess(guess)					#Ensures the word entered is a valid one.
	 $check= nil 
	 File.foreach('words4.txt') do |li|
	 $check= true if (li[guess])
	 end
end

puts
puts "Welcome to the Cow and Bull Simulator!"
puts "<4 letters, only REAL words!>"
puts "<Plus a counter!>"
puts

print "Would you like to read the rules?(Yes/No): "	#Reading the rules.
rules=gets.chomp.downcase
counter=1

if rules=="yes"
	 puts
	 puts "A random four letter word will be generated by the computer."
	 puts
	 puts "You, as the player, will make guesses about this word using various four letter words to obtain clues about the final word."
	 puts
	 puts "A cow means that a letter that you have in your guess is in the goal word, but is NOT in its right place."
	 puts
	 puts "A bull means that a letter that you have in your guess is in the goal word AND is in its right place."
	 puts
	 print "Are you ready?(Yes/No): "
	 ready=gets.chomp.downcase
else
	 puts
	 print "Alrighty, hotshot. You game?(Yes/No): "
	 ready=gets.chomp.downcase
end

if ready!="yes"		#Beginning the game.
	 puts
	 puts "Alright...come back when you are!"
	 puts
else
	 puts
	 puts "Let the game begin!"
	 #puts goal
	 puts "The goal word has been generated!"
	 print "What is your guess?: "
	 guess= gets.chomp.downcase
	 
 	 lengthfake= guess.length != 4 	#Ensures length of guess is 4 letters
	 charfake= (guess[0]==guess[1])||(guess[0]==guess[2])||(guess[0]==guess[3])||(guess[1]==guess[2])||(guess[1]==guess[3])||(guess[2]==guess[3])
	 #Ensures all letters in the word are distinct
	 verify_guess(guess)		#Ensures the word entered is a valid one.
	 
	 while $check!= true || lengthfake==true || charfake==true #Loop triggers if one of the checks is not passed correctly.
		 puts "Hey! Only REAL words with four distinct letters are allowed!"
		 puts
		 print "What is your guess?: " 
		 guess= gets.chomp.downcase
		 lengthfake= guess.length != 4
		 charfake= (guess[0]==guess[1])||(guess[0]==guess[2])||(guess[0]==guess[3])||(guess[1]==guess[2])||(guess[1]==guess[3])||(guess[2]==guess[3])
	 	 verify_guess(guess)
	 end

	 while guess != goal && $check == true	#Processing the guess word
		 bulls= 0
		 cows= 0
		 for a in 0..3
			 if goal[a]==guess[a]
				 bulls+=1
			 end
			 if a==0
				 if goal[a]==guess[1]||goal[a]==guess[2]||goal[a]==guess[3]
					 cows+=1
				 end
			 elsif a==1
				 if goal[a]==guess[0]||goal[a]==guess[2]||goal[a]==guess[3]
					 cows+=1
				 end
			 elsif a==2
				 if goal[a]==guess[0]||goal[a]==guess[1]||goal[a]==guess[3]
					 cows+=1
				 end
			 elsif a==3
				 if goal[a]==guess[0]||goal[a]==guess[1]||goal[a]==guess[2]
					 cows+=1
				 end
			 end
		 end
		 counter+=1
		 puts
		 puts("#{guess.to_s} has #{bulls.to_s} bull(s) and #{cows.to_s} cow(s).")
		 puts
		 
		 print "What is your guess?: " 
		 guess= gets.chomp.downcase
		 lengthfake= guess.length != 4
		 charfake= (guess[0]==guess[1])||(guess[0]==guess[2])||(guess[0]==guess[3])||(guess[1]==guess[2])||(guess[1]==guess[3])||(guess[2]==guess[3])
		 verify_guess(guess)
		 while $check!= true || lengthfake==true || charfake==true
			 puts "Hey! Only REAL words with four distinct letters are allowed!"
			 puts
			 print "What is your guess?: " 
			 guess= gets.chomp.downcase
			 lengthfake= guess.length != 4
			 charfake= (guess[0]==guess[1])||(guess[0]==guess[2])||(guess[0]==guess[3])||(guess[1]==guess[2])||(guess[1]==guess[3])||(guess[2]==guess[3])
	 		 verify_guess(guess)
		 end	 
	 end
	 puts
	 puts "You've cracked it!!!"
	 puts("You took #{counter.to_s} guesses!")
	 puts "Thanks for playing!"
end