puts "Insert a simple expression for differentiation(ax^n): "
print "Coefficient? "
a= gets.chomp.to_i
puts
print "Power? "
n= gets.chomp.to_i

a= a*n
n= n-1

puts "Differentiated Form: " + a.to_s + "x^" + n.to_s
puts
