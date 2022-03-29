module TaxModule

# to check is item exempt from tax
def exempt_good?(str)
  list_of_exempt_item = %w(food medicin chocolates pills book books chocolate)
  gives = false
  for i in list_of_exempt_item
    if str.include?(i)
      gives = true
    end
  end
  gives
end

  # to check if the entered item is in valid forma
def is_valid_entry?(str)
  str
  gives= true
  split_1 = str.split(" ")
  split_2 = str.split(" at ")
  quatity = split_1[0].to_i
  price = split_2[1].to_f

  if quatity==0 || price == 0
    gives  = false
  end  #end of if condition
  gives
end  # end of is_valid_entry? method

def create_new_bill
  item = Array.new
  puts "Enter the item purchase \n(example:1 book at 12.49 [quantity + item name and detail + at + price])"
  puts "Enter 'Done' When all items are entered"
  x = 0
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
