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
    @@genres.map do |first|
      count = 0
      if @@genres.each{|i| 
        if i == first
          count += 1 
        end
      }
        
        #@@genres.delete(first)
      end #Because i will be rap twice!!
      if count > 1 
        @@genres.delete(first)
      end 
    end 
    @@genres 
  end 
  
  def self.artists
    @@artists
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