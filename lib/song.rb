class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
   def self.create
    song = self.new
    song.save
    song
  end
   
   def self.new_by_name(new_song)
     song = self.new 
     song.name = new_song
     song
   end
   
   def self.create_by_name(new_song)
     song = self.create
     song.name = new_song
     song
   end
   
   def self.find_by_name(title)
     found = self.all.detect {|song| song.name == title}
     found
   end
 
  def self.find_or_create_by_name(title)
       found = self.find_by_name(title)
    if found
      found
    else
      self.create_by_name(title)
    end
  end
  
   def self.alphabetical
    sorted = self.all.sort_by {|song| song.name}
    sorted
  end
  
  

end
