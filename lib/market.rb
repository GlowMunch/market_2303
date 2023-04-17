class Market
  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(ven)
    @vendors << ven
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory.include?(item)
    end
  end

  def vendor_names
    names = [] 
    @vendors.each do |vendor|
      names << vendor.name
    end
    names
  end

  def total_inventory

  end

  def overstocked_items

  end

  def shorted_item_list

  end

end