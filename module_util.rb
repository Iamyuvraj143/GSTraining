module MyModule

# to check is item exempt from tax
def exempt_good?(str)
  list_of_exempt_item = %w(food medicin chocolates pills book books chocolate)
  re = false
  for i in list_of_exempt_item
    if str.include?(i)
      re = true
    end
   end
   re
end

  # to check if the entered item is in valid forma
  def is_valid_entry?(str)
    str
    re= true
    a= str.split(" ")
    b = str.split(" at ")
    quatity = a[0].to_i
    price = b[1].to_f

    if quatity==0 || price == 0
      re  = false
    end  #end of if condition
    re
 end  # end of is_valid_entry? method

def create_new_bill
  item = Array.new
  puts "Enter the item purchase \n(example:1 book at 12.49 [quantity + item name and detail + at + price])"
  puts "Enter 'Done' When all items are entered"
  x = 0
  # Using while
  while true do
     item[x] = gets
     x += 1
   # Using Break Statement
     break if item[x-1].include?("Done")
     if is_valid_entry?(item[x-1])==false
       puts "Invalid Entry 'Fatal'"
       create_new_bill
     end
   end  #end of while loop
  item
 end   # end of create new bill

end  # end module


##Validation.create_new_bill
#puts Validation.exempt_good?("1 imported bottle of perfume at 27.99")
#puts Validation.imported?("1 imported bottle of perfume at 27.99")
