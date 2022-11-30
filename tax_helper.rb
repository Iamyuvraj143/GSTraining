# Problem statement :
# Basic sales tax is applicable at a rate of 10% on all goods, except books, food, and medical products that are exempt. Import duty is an additional sales tax applicable on all imported goods at a rate of 5%, with no exemptions.

# When I purchase items I receive a receipt which lists the name of all the items and their price (including tax), finishing with the total cost of the items, and the total amounts of sales taxes paid. The rounding rules for sales tax are that for a tax rate of n%, a shelf price of p contains (np/100 rounded up to the nearest 0.05) amount of sales tax.

# Write an application that prints out the receipt details for these shopping baskets.

# Input:

# 1 book at 12.49
# 1 music CD at 14.99
# 1 chocolate bar at 0.85

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
    quantity = str.split(" ")[0].to_i
    price = str.split(" at ")[1].to_f
    !(quantity == 0 || price == 0) 
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
