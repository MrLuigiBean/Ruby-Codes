puts "Please insert text for encryption:"
text = gets.chomp.to_s
textlength = text.length
determiner= 0.5*text.length
puts

if determiner - (textlength /2) == 0.5
	 puts "Here's your encrypted text!"
	 puts
	 
	 for x in 0..textlength
	 print text[2*x]
	 end
	 
	 
	 for y in 0...(textlength /2 +1)
	 print text[textlength - 2*y]
	 end
	 
elsif determiner - (textlength /2) == 0
	 puts "Here's your encrypted text!"
	 puts
	 
	 for x in 0..textlength
	 print text[2*x]
	 end
	
	 for y in 0...(textlength /2)
	 print text[(textlength-1) - 2*y]
	 end

else
	 puts "If you see this message,"
	 puts "You DONE MESSED UP!"
end
puts
