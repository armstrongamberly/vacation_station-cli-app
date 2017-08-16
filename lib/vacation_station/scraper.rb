class VacationStation::Scraper
	attr_accessor :location, :about


	def self.scrape_options
	
		doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/value")) 	

		doc.css(".marketing-article").each do |destination|
        	name = destination.css("h1").text
        	about = destination.css("p").first.text.strip
        	VacationStation::Location.new(name, about)
      	end
    end

end


		
