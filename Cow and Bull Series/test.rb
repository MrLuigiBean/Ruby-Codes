def pick_random_line
	 chosen_line = nil
	 File.foreach("list.txt").each_with_index do |line, number|
	 chosen_line = line if rand < 1.0/(number+1)
	 end
	 return chosen_line
end

def verify_guess(guess)
	 #a=0
	 $check= nil
	 File.foreach('list.txt') do |li|
	 #puts li if (li[guess])
	 
	 #a+=1 if (li[guess])
	 $check= true if (li[guess])
	 #puts check
	 #puts a
	 end
end

input= gets.chomp
verify_guess(input)
puts $check
if $check == nil
	 puts "lopo"
end
