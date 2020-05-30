class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self 
  end

  def artists()
    paintings().map {|painting| painting.artist}.uniq
  end

  def artist_names()
    artists().map{|artist| artist.name}.uniq
  end

  def paintings()
    Painting.all().select{|painting| painting.gallery == self}
  end

  def most_expensive_painting()
    paintings().map{|painting| painting.price}.max()
  end

  def self.all()
    @@all
  end 

end
