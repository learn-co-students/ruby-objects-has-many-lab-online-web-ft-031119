class Song
    attr_accessor :name, :artist
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        self.artist.name
    end

    def self.all
        @@all
    end

    def artist_name
        # nice shorthand expression for returning the artist name if there is an artist or nil if not
        artist.name if artist
    end
end
