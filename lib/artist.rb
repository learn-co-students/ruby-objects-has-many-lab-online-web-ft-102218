
def Artist
  #has an attr_accessor for :name
  attr_accessor :name

  @@all = []
#initialized with a name
  def initialize(name)
    @name = name
    @all << self
#has many songs
  end

  def self.all
    @@all
  end
  def add_song(song)
    #takes in argument of song and associates
    #with artist by telling song it belongs to the artist
    song.artist = self
  end

  def add_song_by_name(name)
    #takes in an argument of a song name, creates new song,
    #associates song and artist
    song = Song.new(name)
    song.artist = self

  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
  def self.song_count
    #is sa class method that returns total number of songs
    #associated to alle existing artists
    Song.all.count
    #returns the array of songs
  end
end
