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

        if input == "unshuffle"   #if input.to_i, look up .between method
            self.unshuffle
        else
            puts "sorry, I didn't quite get that."
        end
    #end
    
       puts "Please Enter Show Ranking to See Year it Premiered"
        
        input = gets.chomp.to_i

        if input.between?(1,15)

      show_year = self.print_year(input)

       puts "Year it Premiered: #{show_year}"

       else puts "Sorry, Please Enter a Number Between 1 and 15!"

       end
        
        
        puts "Would you like to start the program again? Enter Y or N"

        input = gets.strip.downcase
        if input == "y"
            start
        elsif input == "n"
            puts "Thank you! Have a great day!"
        else
            puts "I don't understand that answer."
        end
    end

    
def print_tvshow
    #binding.pry
    NickelodeonShows::TvShow.all.shuffle.each do |show|
        puts "Show: #{show.name}" 
        if show.position && show.position != ""
        #puts "Ranking: #{show.position}"
        puts "Year it premiered: #{show.year}"
       
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
    #binding.pry
    show = NickelodeonShows::TvShow.all.find { |show| show.position == position.to_s }
    show.year
end
end

end


#if show.position && show.position != ""
    #puts "Ranking: #{show.position}"
    #puts "   Show and Year it Premiered: #{show.name_year}"
    #puts "   Description: #{show.description}"
 #end

#end   


#print_out(x)
  #Name: #{Nick::TvShows.all[x].name}
 # Year: #{Nick::TvShows.all[x].year}
  #Ranking: #{Nick::TvShows.all[x].position}
#end user_input = gets.chomp.downcase
#if user_input = "spongebob"
  #val = 7
  #print_ou(val)
#end 
#From Kunal Shah to Everyone: (5:34 PM)
# if user_input == "spongebob"
  #val = 7
  #print_out(val)
#end 
#case user_input
   #when user_input == "spongebob
     #do something
  #when user_input == "icarly" 




  #class NickelodeonShows::CLI

    #def initialize
        #NickelodeonShows::Scraper.new.make_tvshows
    #end

    #def call
        #puts "Welcome to the top 15 Nickelodeon Shows of the 2000s!"
        
        #start
   # end

    #def start
        #self.print_tvshow
        #puts "Which show of the top 15 would you like to see? Choose between anywhere from 1 to 15."
        #input = gets.strip.to_i
        

       

       # puts "Would you like to see another show? Enter Y or N"

        #input = gets.strip.downcase
       # if input == "y"
            #start
        #elsif input == "n"
            #puts "Thank you! Have a great day!"
        #else
           # puts "I don't understand that answer."
       # end
   # end

    
#def print_tvshow
    #binding.pry
    #NickelodeonShows::TvShow.all.shuffle.each do |show|
        #puts "Show: #{show.name}" 
        #if show.position && show.position != ""
        #puts "Ranking: #{show.position}"
        #puts "Year it premiered: #{show.year}"
       
   # end

#end
#end
#end

#  def find_show_by_number
#  user input

#.find will return the first instance where block of code = true
#.select will return all of the instances under that condition

#self.find()
# def method_1
#   user_input
#   variable_name = method_2(user_input) #should set a variable  =  to an object
#  puts variable_name.name or .year or .position
# end

#def method_2(user_input)
#  variable = TvShow.all.find {|show| show.position == user_input} #to_s or to_i
# end

#def method 1
#input = gets.chomp
#variable_name = TvShow.all.find {|show| show.position == user_input} #to_s or to_i
# end

#def print_year(position)
    #NickelodeonShows::TvShow.all.find { |show| show.position == position }
#end



#def print_out(n)
  #puts "Name: #{NickelodeonShows::TvShows.all[n].name}"
  #puts  "Ranking: #{NickelodeonShows::TvShows.all[n].position}"

