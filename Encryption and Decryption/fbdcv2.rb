puts "Please insert text for decryption:"
puts
text = gets.chomp.to_s
textlength = text.length
puts

print "How many times should the process be applied? "
final=gets.to_i
counter=0
puts "Here's your decrypted text!"
puts

while counter < final
	 output=""
	 for a in 0...textlength/2
		 output= output + text[a].to_s
		 output= output + text[-a-1].to_s
	 end
	 if textlength%2==1
		 output= output + text[textlength/2].to_s
	 end
	 puts output
	 text=output.chomp.to_s
	 counter+=1
end
