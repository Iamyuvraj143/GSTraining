friends = Array ["Shubham", "Chirag","Yuvraj"]
puts friends
puts frineds[1]
puts friends[0,2]

family  = Array.new

family = ["mom", "dad","sister"]

puts family.sort()  #sorting of array
puts family.include?("brother")

# concate method in array
concatedArray = family.concat(friends)

puts concatedArray

a = [18, 22, 33, 8, 5, 6]
b = [1, 4, 1, 1, 88, 9]
# join
puts "join : #{a.join("4")}\n\n"  # output will be : join : 18*22*33*8*5*6

cars = ["BMW", "Tata moters", "MG hector"]
    

owner = ["X Person", "Y Person", "Z Person"]
puts "adding elements in a : #{a.append(b)}\n\n"