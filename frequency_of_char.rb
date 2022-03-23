#2. Using hash table, print the frequency of occurrence of each character inside an array.
str = "YHuvrahsnnvdfvvsjvnddsn"
str =  str.split("")
counts = {}
str.group_by(&:itself).each { |k,v| counts[k] = v.length }

puts counts


# another solution using Enumrable tally
char = "dfgjdfnsdfgdnv,msdfnw"
names = names.split("")
puts names.tally