class Artist 
  
  attr_accessor :name , :songs , :genre
  
  @@all = []
  
  def initialize(name)
    self.name = name
    self.songs = []
    
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
   Song.new(name)
    @@all << self
    self
  end
  
  def add_song(song)
    if song.artist != self
      song.artist = self
      self.songs << song
    end
  end
  
  def genres
   # binding.pry
  end
end 