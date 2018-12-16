require 'pry'

class Song
	@@count = 0
	@@artists = []
	@@genres = []

	attr_reader :name, :artist, :genre

	def initialize(name, artist, genre)
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
		@@genres.inject(Hash.new(0)) { |h, x| h[x] += 1; h}
	end

	def self.artist_count
		@@artists.inject(Hash.new(0)) { |h, x| h[x] += 1; h}
	end
end

lucifer = Song.new("Lucifer", "Jay-Z", "rap")
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")

Song.genres
