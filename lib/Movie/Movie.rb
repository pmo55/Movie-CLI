class Movie
  attr_accessor :release_date, :title, :studio, :total_box_office, :total

    @@all=[]
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
end
