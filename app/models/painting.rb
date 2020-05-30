class Painting

  attr_reader :title, :price
  attr_accessor :gallery, :artist

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
  end

  def self.all()
    @@all
  end

  def self.total_price()
    self.all().reduce(0) {|total, painting| total + painting.price}
  end

end
