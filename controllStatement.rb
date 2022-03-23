  # if condition
  a = true
if a = true
    puts "a is true"
else 
    put "a is False" 
end

b = 5
if b==1
    puts "b is 1"
elsif b==2
    puts "b is 2"
else
    puts "b is something else"
end

# loops in Ruby

#while loop
x = 1
while x <=5
     puts "Hello Ruby"
      x = x + 1
end

#for loop
for i in 1..10
    puts i
end

# Do while loop
t = 0 
loop do
     
  puts "GeeksforGeeks"
  t = 1+t
# using boolean expressions
 if t== 3
  break
 end
  
end

#do while end

#until loop
var = 7
 
# using until loop
# here do is optional
until var == 11 do
 
  # code to be executed
  puts var * 10
  var = var + 1
   
# here loop ends
end


#Times method
5.times do
    puts "Yuvraj"
    end
