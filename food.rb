require "pry"
# each food item has a name and price
class Food
    # writes setter and getter methods
    attr_accessor :name, :price
    
    # writes getter
    # attr_reader :name

    # writes setter
    # attr_writer :name
    @@all = []

    def initialize(name, price)
        # instance variable
        @name = name
        @price = price

        @@all << self
    end

    def pluralize_name
        @name += "s"
    end

    def remove_item
        @@all = @@all.reject { |f| f == self }
    end

    def self.cheapest_to_expensive
        @@all.sort_by { |food| food.price }
    end

    def self.all
        @@all
    end
end

item = Food.new("spaghetti", 10)
item2 = Food.new("watermelon", 5)
item3 = Food.new("pizza", 8)
Food.new("sushi", 12)
# item.initialize("spaghetti", 10)
binding.pry

