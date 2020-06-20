class Artist
  attr_accessor :name
  @@total_songs = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def songs
    @songs
  end
  def add_song(song)
    song.artist = self
    @songs << song
    @@total_songs << song
  end
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@total_songs << song
  end
  def self.song_count
    @@total_songs.length
  end
end
