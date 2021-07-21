def p
File.readlines("num.txt").sample
end

a=p.chomp
array=[a[0]+a[1]+a[2]+a[3]]

array[1]= a[5]
for x in 6..(a.length-1)
	 array[1]= array[1] + a[x]
end

puts array[0] #number
puts array[1] #spelling

# for 4 lettered words