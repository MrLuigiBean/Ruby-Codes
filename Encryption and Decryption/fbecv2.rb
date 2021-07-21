puts "Please insert text for encryption:"
puts
text = gets.chomp.to_s
textlength = text.length
puts

print "How many times should the process be applied? "
final=gets.to_i
counter=0
puts "Here's your encrypted text!"
puts

while counter < final
	 output=""
	 for x in 0..textlength
		 output=output+ text[2*x].to_s
	 end
	 
	 for y in 0..textlength/2
		 if textlength%2==1
			 output=output+ text[-2*y-2].to_s
		 else 
			 output=output+ text[-2*y-1].to_s
		 end
	 end
	 puts output
	 text=output.chomp.to_s
	 counter+=1
end