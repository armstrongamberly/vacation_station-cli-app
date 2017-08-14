class VacationStation::Scraper
	attr_accessor :location, :about


	def self.scrape_options
	
		doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/value")) 
		
		destinations = []		

		doc.css(".marketing-article").each do |destination|
        location = destination.css("h1").text
 		destinations << location
      end
    	destinations
    end

	def self.scrape_summary

		doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/value")) 
		
		summaries = []
		

		doc.css(".marketing-article").each do |summary|
        about = summary.css("p").first.text.strip
 		summaries << about
      end
    	summaries
   
    end
end


		
