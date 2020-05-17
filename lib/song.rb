require 'pry'
class Song

    attr_reader :name  #song title? #attr reader macro
    attr_accessor :artist #artist var #instance var obj
    @@all = [] #class var
    
    def initialize(name) #song title and artist?????
        @name = name #instance var
        @@all << self 

       # binding.pry
    end
    
    def self.all #class method 
        @@all
    end

    def artist_name #each artist 
        if self.artist
            self.artist.name
        else
            nil
        end
    end

    # Song #artist_name knows the name of its artist
    # Failure/Error: expect(song.artist_name).to eq('Drake')
    
    # NoMethodError:
    #   undefined method `artist_name' for #<Song:0x00007fc2981556f0>
    #   Did you mean?  artist
    # # ./spec/song_spec.rb:51:in `block (3 levels) in <top (required)>'

end



