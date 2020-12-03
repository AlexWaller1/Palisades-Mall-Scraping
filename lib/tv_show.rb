#Will take info from the Scraper Class
#Will initialize instance variables of key tv show attributes
#Will take in class variable @@all as an array

class Tv_show

    attr_accessor :name_year, :positon, :description

    @@all = []

    def self.new_from_index_page(t)
    end

    def initialize(name_year=nil, position=nil, description=nil)
        @name_year = name_year
        @position = position
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find(id)
        self.all[id-1]
    end

    def name_year
        @name_year 
    end

    def position
        @position 
    end

    def description
        @description 
    end

    def doc
        @doc ||= Nokogiri::HTML(open(self.url))
    end
end
