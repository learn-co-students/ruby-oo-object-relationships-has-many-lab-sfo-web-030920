class Artist 

    attr_accessor :name
    @songs = []
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all
    end

    def add_song(songobj)
        songobj.artist = self
    end

    def add_song_by_name(songname)
        newsong = Song.new(songname)
        newsong.artist = self
    end

    def self.song_count
        Song.all.count
    end
end 