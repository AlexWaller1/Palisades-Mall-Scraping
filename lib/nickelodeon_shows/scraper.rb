#Here is where we will scrape information from website
#make sure to use Nokogiri here


class NickelodeonShows::Scraper

    def get_page
        Nokogiri::HTML(open("https://screenrant.com/nickelodeon-shows-2000s-best-ranked-imdb/", 'User-Agent' => 'ruby'))
        
    end

    def get_shows
      self1 = self.get_page.css("section.article-body").css("h2")
      #binding.pry
      self1
    end

    def make_tvshows
        get_shows.each do |articlebody|
            # position = articlebody["#{i}"].css("span")[0].text
            # name = articlebody["#{i}"].text.split(/[ :]/)[1]
            # year = articlebody["#{i}"].text.split(/[ :]/)[2]
            position = articlebody.css("span")[0].text
            name = articlebody.text.split(" ", 2)[1].split("(")[0].strip
            year = articlebody.text.split("(")[1].split(")")[0].strip
            show = NickelodeonShows::TvShow.new(name,year,position)
            #show.description = articlebody.css("p").text
            
        end
    end
end

#page.css("h2")[0].css("span")[0].text   for position

#page.css("h2")[1].text.split(/[ :]/)[1]    for name

#page.css("h2")[1].text.split(/[ :]/)[2]    for year