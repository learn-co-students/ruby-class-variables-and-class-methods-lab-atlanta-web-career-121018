require 'pry'
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
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    ans = {}
    @@genres.each do |genre|
      if ans.has_key?(genre)
        ans[genre] += 1
      else
        ans[genre] = 1
      end
    end
    ans
  end


  def self.artist_count
    ans = {}
    @@artists.each do |artist|
      if ans.has_key?(artist)
        ans[artist] += 1
      else
        ans[artist] = 1
      end
    end
    ans
  end

end
