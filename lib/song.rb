class Song

  attr_accessor(:name, :artist, :genre)

  @@song_list = []

  @@count = 0

  @@artists = []

  @@genres = []
  # @@artists = @@song_list.map do |song|
  #   song.artist
  # end
  #
  # @@genres = @@song_list.map do |song|
  #   song.genre
  # end

  def initialize(name, artist, genre)
    @@song_list << self
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end


  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |genre, hash| hash[genre] += 1 }
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |artist, hash| hash[artist] += 1}
  end
end
