class Vendor
  attr_reader :name
  attr_accessor :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end
  
  def check_stock(item)
    @inventory[item]
  end

  def stock(item, qty)
    @inventory[item] += qty
  end

  def potential_revenue
    revenue = 0
    @inventory.each do |item|
      revenue += (item.price * item.value)
    end
    revenue
  end

end