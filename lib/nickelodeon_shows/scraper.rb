#Here is where we will scrape information from website
#make sure to use Nokogiri here


class NickelodeonShows::Scraper

    def get_page
        Nokogiri::HTML(open("https://screenrant.com/nickelodeon-shows-2000s-best-ranked-imdb/", 'User-Agent' => 'ruby'))
        
    end

    def get_shows
      self.get_page.css("section.article-body").css("h2")
     
      
    end

    def make_tvshows
        get_shows.each do |articlebody|
            
            position = articlebody.css("span")[0].text
            name = articlebody.text.split(" ", 2)[1].split("(")[0].strip
            year = articlebody.text.split("(")[1].split(")")[0].strip
            show = NickelodeonShows::TvShow.new(name,year,position)
            
            
        end
    end
end

