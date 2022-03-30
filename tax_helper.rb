module TaxHelper

  LIST_OF_EXEMPT_ITEMS = %w(food medicin chocolates pills book books chocolate )

# to check is item exempt from tax
  def exempt_good?(str)
    item  = str.split(" ")
    exempted_item = item & LIST_OF_EXEMPT_ITEMS
   !exempted_item.empty? 
  end

  # to check if the entered item is in valid forma
  def is_valid_entry?(str)
    quantity = item.split(" ")[0].to_i
    price = item.split(" at ")[1].to_f
    quatity == 0 || price == 0 ? false : true
  end   # end of is_valid_entry? method

  def create_new_bill
    items = []
    puts "Enter the item purchase \n(example:1 book at 12.49 [quantity + item name and detail + at + price])"
    puts "Enter 'Done' When all items are entered"
    while true do
      input = gets
      break if input.include?("Done")
      if is_valid_entry?(input) == false
        puts "Invalid Entry 'Fatal'"
        create_new_bill
      end
      items.append(input)
    end  #end of while loop
    items
  end # end of create new bill
end  # end module