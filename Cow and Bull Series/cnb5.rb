def p
File.readlines("words5.txt").sample
end
g=p.chomp
def v(i)
$w=nil
File.foreach('words5.txt')do|a|
$w=true if(a[i])
end
end
puts
puts"Welcome to the Cow and Bull Simulator!"
print"Would you like to read the rules?(Yes/No): "
r=gets.chomp.downcase
z=1
if r=="yes"||r=="y"
puts
puts"A random five letter word will be generated by the computer."
puts
puts"You, as the player, will make guesses about this word using various five letter words to obtain clues about the final word."
puts
puts"A cow means that a letter that you have in your guess is in the goal word, but is NOT in its right place."
puts
puts"A bull means that a letter that you have in your guess is in the goal word AND is in its right place."
puts
print"Are you ready?(Yes/No): "
x=gets.chomp.downcase
else
puts
print"Alrighty, hotshot. You game?(Yes/No): "
x=gets.chomp.downcase
end
if x =="no"||x =="n"
puts
puts"Alright...come back when you are!"
puts
else
puts
puts"Let the game begin!"
puts"Your five letter goal word has been generated!"
print"What is your guess?: "
i=gets.chomp.downcase
lf=i.length!=5
cf=(i[0]==i[1])||(i[0]==i[2])||(i[0]==i[3])||(i[0]==i[4])||(i[1]==i[2])||(i[1]==i[3])||(i[1]==i[4])||(i[2]==i[3])||(i[2]==i[4])||(i[3]==i[4])
v(i)
while $w!=true||lf==true||cf==true
puts"Hey! Only REAL words with five distinct letters are allowed!"
puts
print"What is your guess?: "
i=gets.chomp.downcase
lf=i.length!=5
cf=(i[0]==i[1])||(i[0]==i[2])||(i[0]==i[3])||(i[0]==i[4])||(i[1]==i[2])||(i[1]==i[3])||(i[1]==i[4])||(i[2]==i[3])||(i[2]==i[4])||(i[3]==i[4])
v(i)
end
while i!=g&&$w==true
b=0
c=0
for k in 0..4
if g[k]==i[k]
b+=1
end
if k==0
if g[k]==i[1]||g[k]==i[2]||g[k]==i[3]||g[k]==i[4]
c+=1
end
elsif k==1
if g[k]==i[0]||g[k]==i[2]||g[k]==i[3]||g[k]==i[4]
c+=1
end
elsif k==2
if g[k]==i[0]||g[k]==i[1]||g[k]==i[3]||g[k]==i[4]
c+=1
end
elsif k==3
if g[k]==i[0]||g[k]==i[1]||g[k]==i[2]||g[k]==i[4]
c+=1
end
elsif k==4
if g[k]==i[0]||g[k]==i[1]||g[k]==i[2]||g[k]==i[3]
c+=1
end
end
end
z+=1
puts
puts("#{i.to_s} has #{b.to_s} bull(s) and #{c.to_s} cow(s).")
puts
print"What is your guess?: "
i=gets.chomp.downcase
lf=i.length!=5
cf=(i[0]==i[1])||(i[0]==i[2])||(i[0]==i[3])||(i[0]==i[4])||(i[1]==i[2])||(i[1]==i[3])||(i[1]==i[4])||(i[2]==i[3])||(i[2]==i[4])||(i[3]==i[4])
v(i)
while $w!=true||lf==true||cf==true
puts"Hey! Only REAL words with five distinct letters are allowed!"
puts
print"What is your guess?: "
i=gets.chomp.downcase
lf=i.length!=5
cf=(i[0]==i[1])||(i[0]==i[2])||(i[0]==i[3])||(i[0]==i[4])||(i[1]==i[2])||(i[1]==i[3])||(i[1]==i[4])||(i[2]==i[3])||(i[2]==i[4])||(i[3]==i[4])
v(i)
end
end
puts
puts"You've cracked it!!!"
puts("You took #{z.to_s} guesses!")
puts"Thanks for playing!"
end