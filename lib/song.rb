require 'pry'

class Song
  attr_accessor :name, :artist, :genre, :artists, :genres

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    # @@all << self
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
    unique_genre = {}
    @@genres.each do |genre|
      if unique_genre[genre]
        unique_genre[genre] += 1

      else
        unique_genre[genre] = 1
      end
    end
    unique_genre
  end

  def self.artist_count
    unique_artists = {}
    @@artists.each do |artist|
      if unique_artists[artist]
        unique_artists[artist] += 1
      else
        unique_artists[artist] =  1
      end
    end
    unique_artists
  end
end
