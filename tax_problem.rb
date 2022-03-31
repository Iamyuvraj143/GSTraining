require_relative "tax_helper.rb"
include TaxHelper

class Billing

  def initialize(list_of_purchase)
    @purchase_list = list_of_purchase
  end

  SALES_TAX = 5
  BASIC_TAX = 10

  @total_tax_amount
  @total_tax_amount

  def calculate_tax
    @purchase_list.each do |item|
      quantity = item.split(" ")[0].to_i
      item_name = item.split(" at ")[0]
      price = item.split(" at ")[1].to_f

      tax_percentage = exempt_good?(item) ? 0 : BASIC_TAX
      tax_percentage += SALES_TAX if item_name.include?("imported")

      sales_tax_amount = ((price * tax_percentage) /100 ).round(2)
      @total_tax_amount = @total_tax_amount.to_f + sales_tax_amount.to_f
    
      final_price = ( price + sales_tax_amount.to_f ).round(2) 
      @total_amount = @total_amount.to_f  + final_price.to_f
      puts "#{item_name} at #{final_price.to_f.round(2)}"
    end  # end of array iteration
    
    puts "total tax: #{@total_tax_amount.to_f.round(2)}"
    puts "Total : #{@total_amount.round(2)}"
  end  #calculateTax function end here
  
end  # end of class here

# program  launch from here
list_of_purchase = create_new_bill
bill = Billing.new(list_of_purchase)
bill.calculate_tax
