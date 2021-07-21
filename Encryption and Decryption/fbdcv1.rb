puts "Please insert text for decryption:"
text = gets.chomp.to_s
textlength = text.length
determiner= 0.5*text.length
puts

if determiner - (textlength /2) == 0.5
	 puts "Here's your decrypted text!"
	 puts
	 
	 for a in 0...(textlength /2)
		 print text[a]
		 print text[(textlength-1) -a]
	 end
	 print text[textlength /2]
	 
elsif determiner - (textlength /2) == 0
	 puts "Here's your decrypted text!"
	 puts
	 
	 for a in 0...(textlength /2)
		 print text[a]
		 print text[(textlength-1) -a]
	 end
	 
else
	 puts "If you see this message,"
	 puts "You DONE MESSED UP!"
end
puts

