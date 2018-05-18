class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    
    @@count = @@count += 1
    @@genres << @genre 
    @@artists << @artist 
  end 
  
  def self.count
    return @@count 
  end 
  
  def self.genres
new_genre = @@genres
new_genre = new_genre.uniq 
new_genre
  end 
  
  def self.artists
    new_artists = @@artists
    new_artists = new_artists.uniq 
    new_artists 
  end 
  
  def self.genre_count
    #count = 0 
    genre_hash = {}
    @@genres.each do |i|
      genre_hash[i] += 1 
    end 
    genre_hash
  end 

end 