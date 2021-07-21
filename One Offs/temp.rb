puts "Insert Lower Limit: "
lower= gets.to_i
puts "Insert Upper Limit: "
upper= gets.to_i
puts

def divi(i, d)
	 return i%d
end

for i in lower..upper
	 counter=0
	 print "#{i} "
	 for d in 2..7
		 print "#{divi(i, d)} "
	 end
	 puts
end