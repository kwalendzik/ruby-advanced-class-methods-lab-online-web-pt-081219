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
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if Song.find_by_name(name) == nil
      Song.create_by_name(name)
    else
      Song.find_by_name(name)
    end
  end
  
  def self.alphabetical
    @@all.sort_by do |song|
    song.name
    end
  end
  
  def self.new_from_filename(filename)
    row = filename
    data = row.split(" - ")
    artist_name = data[0]
    song_name = data[1].chomp(".mp3")
    
    song = self.new 
    song.name = song_name
    song.artist_name = artist_name
    song
  end
  
  def self.create_from_filename(filename)
    row = filename
    data = row.split(" - ")
    artist_name = data[0]
    song_name = data[1].chomp(".mp3")
    
    song = self.create 
    song.name = song_name 
    song.artist_name = artist_name
    song
  end
  
  def self.destroy_all
    self.all.clear
  end

end
