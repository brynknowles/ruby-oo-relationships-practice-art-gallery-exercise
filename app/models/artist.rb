class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all 
    @@all
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self}
  end

  def galleries
    self.paintings.map { |painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.map { |gallery| gallery.city}.uniq
  end

  def self.total_experience
    self.all.sum { |artist| artist.years_experience}
  end

  def number_of_paintings
    self.paintings.count
  end

  def paintings_per_year
    self.number_of_paintings.to_f / self.years_experience.to_f
  end

  def self.most_prolific
    self.all.max_by { |artist| artist.paintings_per_year}
  end

end
