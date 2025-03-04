require './lib/item'
require './lib/vendor'


RSpec.describe do
  before(:each) do
    @vendor = Vendor.new("Rocky Mountain Fresh")
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  it "has items and vendors" do
    expect(@vendor).to be_a(Vendor)
    expect(@vendor.name).to eq("Rocky Mountain Fresh")
    expect(@item1).to be_a(Item)
    expect(@item2).to be_a(Item)
    expect(@item2.name).to eq("Tomato")
    expect(@item2.price).to eq("$0.50")
  end
  
  it "can add and check inventory" do
    expect(@vendor.inventory).to eq({})
    expect(@vendor.check_stock(@item1)).to eq(0)
    @vendor.stock(@item1, 30)
    expect(@vendor.check_stock(@item1)).to eq(30)
    @vendor.stock(@item1, 25)
    expect(@vendor.check_stock(@item1)).to eq(55)
    @vendor.stock(@item2, 12)
    expect(@vendor.check_stock(@item2)).to eq(12)
    expect(@vendor.inventory).to eq({@item1 => 55, @item2 => 12})
  end

end
