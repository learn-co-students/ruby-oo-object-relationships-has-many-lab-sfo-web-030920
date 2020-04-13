require 'pry'
class Artist

    attr_accessor :name

    @@song_count = 0
    def initialize(name)
        @name = name
    end

    def songs
        var = Song.all.select do |s|
            s.artist == self
        end
    end

    def add_song(song)
        song.artist = self
        @@song_count += 1
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
        @@song_count += 1
    end

    def self.song_count
        total = 0
        Song.all.each do |s|
            total += 1
        end
        total
    end

end















































































    #  attr_accessor :name

    # @@song_count = 0
  
    # def initialize(name)
    #   @name = name
    #   @songs = []
    # end
  
    # def add_song(song)
    #   self.songs << song
    #   song.artist = self
    #   @@song_count +=1
    # end
  
    # def add_song_by_name(name)
    #   song = Song.new(name)
    #   self.songs << song
    #   song.artist = self
    #   @@song_count +=1
    # end
  
    # def songs
    #   var = Song.all.select do |s|
    #     s.artist == self
    #   end
    #   # binding.pry
    # end
  