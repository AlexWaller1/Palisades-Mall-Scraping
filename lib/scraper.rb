#Here is where we will scrape information from website
#make sure to use Nokogiri here
class Scraper

    def get_page
        Nokogiri::HTML(open(https://screenrant.com/nickelodeon-shows-2000s-best-ranked-imdb/))
    end

    def scrape_tvshows_index
        self.get_page.css("div[data-list='1-10'] a.item")
    end

    def make_tvshows
        scrape_tvshows_index.each do |t|
            StoreTracker.new_from_index_page(t)
        end
    end
end