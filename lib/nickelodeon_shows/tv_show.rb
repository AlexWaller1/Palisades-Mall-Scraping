#Will take info from the Scraper Class
#Will initialize instance variables of key tv show attributes
#Will take in class variable @@all as an array

class NickelodeonShows::TvShow

    attr_accessor :name, :year, :position

    @@all = []


    def initialize(name = nil, year = nil, position = nil)
        @name = name
        @year = year
        @position = position
        
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find(id)
        self.all[id-1]
    end



    
   
end


