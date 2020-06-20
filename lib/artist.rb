class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  def add_song(song)
    self.class.all << song
    self.songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    new_song = Song.new(name)
    self.add_song(new_song)
  end
  
  def self.song_count
    self.all.length
  end
end