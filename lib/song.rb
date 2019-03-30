class Song
    attr_accessor :title, :artist
    
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def artist_name
        self.artist.title
    end

    def self.all
        @@all
    end

    def artist_name
        artist.title if artist
    end
end
