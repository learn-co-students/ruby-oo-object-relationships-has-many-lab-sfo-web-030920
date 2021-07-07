class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        var = Post.all.select do |s|
            s.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_name)
        post = Post.new(post_name)
        post.author = self
    end

    def self.post_count
        total = 0
        Post.all.select do |s|
            total += 1
        end
        total
    end



end

# require 'pry'
# class Artist

#     attr_accessor :name

#     @@song_count = 0
#     def initialize(name)
#         @name = name
#     end

#     def songs
#         var = Song.all.select do |s|
#             s.artist == self
#         end
#     end

#     def add_song(song)
#         song.artist = self
#         @@song_count += 1
#     end

#     def add_song_by_name(song_name)
#         song = Song.new(song_name)
#         song.artist = self
#         @@song_count += 1
#     end

#     def self.song_count
#         total = 0
#         Song.all.select do |s|
#             total += 1
#         end
#         total
#     end

# end