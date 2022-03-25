friends = %w(Shubham Chirag Yuvraj)
family  = Array[]
family = %w(mom dad sister)

# concate method in array
concated_array = family.concat(friends)

puts concated_array

a = [18, 22, 33, 8, 5, 6]
b = [1, 4, 1, 1, 88, 9]
# join
puts "join : #{a.join("4")}\n\n"  # output will be : join : 18*22*33*8*5*6

cars = %w(bmw suv maruti)


owner = %w(sumit suman sunil)
puts "adding elements in a : #{a.append(b)}\n\n"
