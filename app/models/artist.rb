class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def paintings()
    Painting.all().select{|painting| painting.artist == self}
  end

  def galleries()
    paintings().map {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map{|gallery| gallery.city()}
  end

  def create_painting(title, price, gallery)
    painting = Painting.new(title, price)
    painting.gallery = gallery
    painting.artist = self
  end

  def self.total_experience()
    self.all().reduce(0){|total, artist| total + artist.years_experience}
  end

  def self.painting_per_yer(artist)
    artist.paintings().count().to_f()/ artist.years_experience
  end

  def self.most_prolific()
    all().max_by{|artist| painting_per_yer(artist)}
  end

  def self.all()
    @@all
  end

end
