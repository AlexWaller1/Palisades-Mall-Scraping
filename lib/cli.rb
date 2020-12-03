# greet user, takes input from user, user will 
#able to ask which number on the list they would
#like to access

class CLI

    def call
        Scraper.new.make_tvshow
        puts "Welcome to the top 10 Nickelodeon Songs of the 2000s!"
        start
    end

    print_tvshow(input)

    puts ""
    puts "What awesome Nickelodeon show would like to hear about?"
    input = gets.strip

    tvshow = Tv_show.find(input.to_i)

    print_tvshow(position)

    puts ""
    puts "Would you like to hear about another awesome show? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
        start
    elsif input == "n"
        puts ""
        puts "Thank you! Have a great day!"
        exit
    else
        puts ""
        puts "I don't understand that answer."
    end
end

def print_tvshow
    self.make_tvshow
    Tv_show.all.each do |show|
        if show.position && show.position != ""
            puts "Ranking: #{show.position}"
            puts "   Show and Year it Premiered: #{show.name_year}"
            puts "   Description: #{show.description}"
        end
    end
end
    
end


    