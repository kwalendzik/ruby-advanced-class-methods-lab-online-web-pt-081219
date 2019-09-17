class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new 
    @@all << song 
    song
  end
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song
  end
  
  def self.create_by_name(name)
    song = self.create 
    song.name = name 
    song
  end
  
  def self.find_by_name
    
  end
  
  def self.find_or_create_by_name
    
  end
  
  def self.alphabetical
    @@all.sort_by do |song|
    song.name
    end
  end
  
  def self.new_from_filename
    
  end
  
  def self.creat_from_filename
    
  end
  
  def self.destroy_all
    self.all.clear
  end

end
