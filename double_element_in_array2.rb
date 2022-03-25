#Use the map function to double all the elements in the array.
# However, handle edge cases (like array can have a character) as well.
array = [1, 2, 3, "a", "b"]
new_array = array.map do |n|
  if n.kind_of? Integer
     n * 2
  end
end
   puts new_array
