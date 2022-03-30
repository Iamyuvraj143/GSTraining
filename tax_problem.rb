require_relative "tax_helper.rb"
include TaxHelper

class Billing

  def initialize(list_of_purchase)
    @purchase_list = list_of_purchase
  end

  SALES_TAX = 5
  BASIC_TAX = 10
    
  @purchase_list

  def calculate_tax
    for item in @purchase_list
      split_1= item.split(" ")
      split_2 = item.split(" at ")
      quatity = split_1[0].to_i
      item  = split_2[0]
      price = split_2[1].to_f

      if split_2[0].include?("imported")
        sales_tax_amount = ((price * SALES_TAX) / 100 ).round(2)
        total_tax_amount = total_tax_amount.to_f + sales_tax_amount.to_f
      end

      if exempt_good?(item) == false 
        basic_tax_amount = ((price * BASIC_TAX) / 100 ).round(2)
        total_tax_amount = total_tax_amount.to_f + basic_tax_amount.to_f
      end
    
      final_price = price + sales_tax_amount.to_f + basic_tax_amount.to_f
      total_amount = total_amount.to_f  + final_price.to_f
      puts"#{split_2[0]} at #{final_price.to_f.round(2)}"
      sales_tax_amount = 0
      basic_tax_amount = 0
    end  # end of for loop
    puts "total tax: #{total_tax_amount.to_f.round(2)}"
    puts "Total : #{total_amount.round(2)}"
  end  #calculateTax function end here
end  # end of class here

# program  launch from here
list_of_purchase = create_new_bill
bill = Billing.new(list_of_purchase)
bill.calculate_tax
