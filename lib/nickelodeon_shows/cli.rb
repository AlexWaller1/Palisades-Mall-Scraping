# greet user, takes input from user, user will 
#able to ask which number on the list they would
#like to access

class NickelodeonShows::CLI

    def initialize
        NickelodeonShows::Scraper.new.make_tvshows
    end

    def call
        puts "Welcome to the top 15 Nickelodeon Shows of the 2000s!"
        
        start
    end

    def start
        self.print_tvshow
        
        puts "Type in unshuffle to see the rankings."
         
        input = gets.chomp.downcase

        if input == "unshuffle"   
            self.unshuffle
        else
            puts "sorry, I didn't quite get that."
            start
        end
    
    
       puts "Please Enter Show Ranking to See Year it Premiered"
        
        input = gets.chomp.to_i

        if input.between?(1,15)

      show_year = self.print_year(input)

       puts "Year it Premiered: #{show_year}"

       else puts "Sorry, Please Enter a Number Between 1 and 15!"
        start
        
       end
        
        
        puts "Would you like to start the program again? Enter Y or N"

        input = gets.strip.downcase
        if input == "y"
            start
        elsif input == "n"
            puts "Thank you! Have a great day!"
            exit
        else
            puts "I don't understand that answer."
            start
            
        end
    end

    
def print_tvshow
    
    NickelodeonShows::TvShow.all.shuffle.each do |show|
        puts "Show: #{show.name}" 
        if show.position && show.position != ""
        
    end

end
end

def unshuffle
    NickelodeonShows::TvShow.all.each do |show|
        puts "Show: #{show.name}" 
        if show.position && show.position != ""
        puts "Ranking: #{show.position}"
        end
    end

def print_year(position)
    
    show = NickelodeonShows::TvShow.all.find { |show| show.position == position.to_s }
    show.year
end
end

end


