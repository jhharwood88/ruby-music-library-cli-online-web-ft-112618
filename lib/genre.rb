class Genre 

attr_accessor :name , :songs , :artist
  
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
  
  def songs
    @songs 
  end
  
  def add_song(song)
    if song.genre != self
      song.genre = self
      self.songs << song
      
    end
  end
  
end 