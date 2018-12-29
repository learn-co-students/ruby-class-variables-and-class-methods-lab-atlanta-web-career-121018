
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  # * Write a class method, `.genres` that returns an array of all of the
  # genres of existing songs. This array should contain only unique genres––
  # no duplicates! Think about what you'll need to do to get this method
  # working.
  def self.genres
    @@genres.uniq
    #make this unique
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    #Write a class method, .genre_count, that returns a hash in which
    #the keys are the names of each genre. Each genre name key should
    #point to a value that is the number of songs that have that genre.
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] +=1
      else
        genre_count[genre] =1
      end
    end
    genre_count
  end

  def self.artist_count
    #Write a class method, .artist_count, that returns a histogram
    # similar to the one above, but for artists rather than genres.
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] +=1
      else
        artist_count[artist] =1
      end
    end
    artist_count
  end
end
