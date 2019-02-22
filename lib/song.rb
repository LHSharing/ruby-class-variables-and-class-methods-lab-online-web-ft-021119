#We'll accomplish this with the use of class variables and methods.
require 'pry'

# Song
#   #new
#     takes in three arguments: a name, artist and genre
#   #name
#     has a name
#   #artist
#     has an artist
#   #genre
#     has a genre
#   class variables
#     has a class variable, @@count
#
#     has a class variable, @@artists, that contains all of the artists of existing songs (FAILED - 1)
#     has a class variable, @@genres, that contains all of the genres of existing songs (FAILED - 2)
#   .count
#     is a class method that returns that number of songs created (FAILED - 3)
#   .artists
#     is a class method that returns a unique array of artists of existing songs (FAILED - 4)
#   .genres
#     is a class method that returns a unique array of genres of existing songs (FAILED - 5)
#   .genre_count
#     is a class method that returns a hash of genres and the number of songs that have those genres (FAILED - 6)
#   .artist_count
#     is a class method that returns a hash of artists and the number of songs that have those artists (FAILED - 7)

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres =[]

 #def initialize(name: name, artist: artist, genre: genre)
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
     @@count
  end

   def self.artists
     @@artists.uniq
   end

   def self.artist_count
     artist_count = {}
     @@artists.each do |artist|
       if artist_count[artist]
         artist_count[artist] +=1
         #binding.pry
       else
         artist_count[artist] = 1
       end
   end
     artist_count
   end

#=> {"Beyonce" => 17, "Jay-Z" => 40}

     def self.genres
       @@genres.uniq
     end


def self.genre_count
   genre_count = {}
   @@genres.each do |genre|
    if genre_count[genre]
       genre_count[genre] += 1
    else
       genre_count[genre] = 1
    end
   end
   genre_count
end
end

  # #return a hash {genre=>how many songs are in that genre}
  # #{"rap" => 5, "rock" => 1, "country" => 3}
  # end
  #
