require 'pry'
class Artist

  attr_accessor :name
  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def songs
    @songs
  end

  def self.song_count
    @@songs.length
  end
end
