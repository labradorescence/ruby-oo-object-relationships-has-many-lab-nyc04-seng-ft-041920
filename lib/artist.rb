
class Artist 
    attr_accessor :name
         
    def initialize(name)
        @name= name
        @song = []
    end

    def songs
        Song.all.select do |each_song| #Song class 
            each_song.artist == self #song self, which is @@all in initialize
        end
    end

    # takes in an argument of a song
    # associates that song with the artist by telling the song that it belongs to that artist 

    #create artist name var 

    def add_song(name_of_obj_of_song_class) #the whole obj, not song title
        name_of_obj_of_song_class.artist = self #.artist from song class
          
            #self = artist self 
            #self = Drake

          #how can we pass in the .artist method from SONG??? A: bc 
          #what's the difference btw this method and 'songs' method?        
    end

# #add_song_by_name
# takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 1)

# describe "#add_song_by_name" do
# it "takes in an argument of a song name, creates a new song with it and associates the song and artist" do
#   adele.add_song_by_name("Rolling in the Deep")
#   expect(adele.songs.last.name).to eq("Rolling in the Deep")
#   expect(adele.songs.last.artist).to eq(adele)
# end
# end

    def add_song_by_name(name) #name = string, song title?
        song = Song.new(name) #song = song obj
        song.artist = self
    end

    # .song_count
    # is a class method that returns the total number of songs associated to all existing artists (FAILED - 1)

    # describe ".song_count" do
    #     it "is a class method that returns the total number of songs associated to all existing artists" do
    #       expect(Artist.song_count).to eq(3)
    #     end
    #   end

      def self.song_count #class method
        Song.all.count
      end

end

#drake.add_song_by_name("hotline bling")

#drake = Song.new("hotline_bling")
#drake.add_song()
# drake.add_song(hotline_bling)
# hotline_bling.artist 
