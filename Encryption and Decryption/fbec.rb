puts "Please insert text for encryption:"
t=gets.chomp.to_s
tl=t.length
puts
puts "Here's your encrypted text!"
for x in 0..tl/2
print t[2*x]
end
for y in 0..tl/2
if tl%2==1
print t[-2*y-2]
else
print t[-2*y-1]
end
end