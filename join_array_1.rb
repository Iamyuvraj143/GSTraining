#Join 2 arrays without using inbuilt functions.
friends =  %w(Shubham Chirag Yuvraj)
family =  %w(mom dad sister)
for i in friends
  family.push(i)
end

puts family
