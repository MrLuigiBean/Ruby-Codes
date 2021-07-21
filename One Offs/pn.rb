print "Please insert a Lower Limit: "
i=gets.chomp.to_i

while i<=1
	 puts "Hey! Insert a number greater than one!"
	 puts
	 print "Please insert a Lower Limit: "
	 i=gets.chomp.to_i
end

puts
print "Please insert an Upper Limit: "
j=gets.chomp.to_i

while j<=1
	 puts "Hey! Insert a number greater than one!"
	 print "Please insert a Upper Limit: "
	 puts
	 j=gets.chomp.to_i
end

print "The prime numbers within this range are: "

for a in i..j
	 counter=0
	 for k in 2...a
		 if a%k == 0
			 counter+=1
		 end
	 end
	 if counter == 0
		 print "#{a.to_s} "
	 end
end