#Here is where we will scrape information from website
#make sure to use Nokogiri here
require 'nokogiri'
require 'open-uri'

require_relative './tv_show.rb'

class Scraper

    def get_page
        Nokogiri::HTML(open(https://screenrant.com/nickelodeon-shows-2000s-best-ranked-imdb/))
    end

    def get_shows
        self.get_page.css(".post")
    end

    def make_tvshows
        self.get_shows.each do |post|
            show = Tv_show.new
            show.position = post.css("span").text
            show.name_year = post.css("h2").text
            show.description = post.css("p").text
        end
    end
end