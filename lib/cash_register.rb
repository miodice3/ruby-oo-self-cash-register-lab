require 'pry'

class CashRegister

    def initialize(discount = 0)
        @total = 0.00
        @discount = discount
        @items = []
    end

    attr_accessor :items, :total
    attr_reader :discount

    def add_item(item, price, quantity = 1)
        @item = item
        @price = price
        @quantity = quantity
        counter = @quantity
        @total = @price * @quantity + @total
            while counter >= 1
                @items << item
                counter -= 1
            end 
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        elsif @discount != 0
            @total = @total*(100.00-@discount)/100.00
            @total= @total.to_i
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @total = @total - @price * @quantity
        counter = @quantity
            while counter >= 1
                @items.pop
                counter -= 1
            end
    end

end


    # def items=(items)
    #     @items = items
    # end

    # def items
    #     @items
    # end

    # def total=(total)
    #     @total = total
    # end

    # def total
    #     @total
    # end

    # def discount
    #     @discount
    # end

# test = CashRegister.new()
# test.add_item("carrots")