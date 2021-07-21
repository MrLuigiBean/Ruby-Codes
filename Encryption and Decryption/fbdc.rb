puts "Please insert text for decryption:"
t=gets.chomp.to_s
tl=t.length
puts
puts "Here's your decrypted text!"
for a in 0...tl/2
print t[a]
print t[-a-1]
end
if tl%2==1
print t[tl/2]
end
