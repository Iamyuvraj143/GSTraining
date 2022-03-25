class Billing

    def initialize(list_of_purchase)
      @purchase_list = list_of_purchase
    end

    def sales_tax
         @sales_tax = 5
    end

    def basic_tax
         @basic_tax = 10
    end

    def purchase_list
      @purchase_list
    end

    def total
      @total_amount
    end

    def total_tax_amount
      @total_tax_amount
    end

    def calculate_tax
       for i in @purchase_list
           str = i
           a= str.split(" ")
           b = str.split(" at ")
           quatity = a[0].to_i
           item  = b[0]
           price = b[1].to_f

        if b[0].include?("imported")
           sales_tax_amount = (price * sales_tax) / 100
           sales_tax_amount  = sales_tax_amount.round(2)
           total_tax_amount = total_tax_amount.to_f + sales_tax_amount.to_f
         end

           basic_tax_amount = (price * basic_tax) / 100
           basic_tax_amount = basic_tax_amount.round(2)

           final_price = price + sales_tax_amount.to_f + basic_tax_amount.to_f
           total_tax_amount = total_tax_amount.to_f + basic_tax_amount.to_f

           if b[0].include?("book") || b[0].include?("chocolate") || b[0].include?("pills")
           final_price = price
           end

           total_amount = total_amount.to_f  + final_price.to_f

           print b[0]
           print " at "
           puts final_price.to_f.round(2)

      end  # end of for loop

      puts "total tax: #{total_tax_amount.round(2)}"
      puts "Total : #{total_amount.round(2)}"
    #calculateTax function end here
    end
end  # end of class here

list_of_purchase = ["1 imported bottle of perfume at 27.99",
"1 bottle of perfume at 18.99",
"1 packet of headache pills at 9.75",
"1 box of imported chocolates at 11.25"
]
 b = Billing.new(list_of_purchase)
 b.calculate_tax
