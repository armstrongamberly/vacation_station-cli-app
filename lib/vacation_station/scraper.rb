class VacationStation::Scraper
	attr_accessor :location, :summary


# 	def self.scrape
	
# 		doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/value")) 

# 		destinations = []
# # # 		

# 		doc.css(".marketing-article").each do |destination|
#         location = destination.css("h1").text
#         summary = destination.css("p").first.text.strip
#         destinations.push(
#         	location: location, 
#         	summary: summary
#         	)
#       end
#     	destinations
#     	binding.pry
#   	end


# end

	def self.scrape_options
	
		doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/value")) 
		
		destinations = []
# # 		

		doc.css(".marketing-article").each do |destination|
        location = destination.css("h1").text
 		destinations << location
      end
    	destinations
    	# binding.pry
    end

	def self.scrape_summary

		doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/value")) 
		
		summaries = []
# # 		

		doc.css(".marketing-article").each do |summary|
        about = summary.css("p").first.text.strip
 		summaries << about
      end
    	summaries
    	# binding.pry
    end
end


		
# 		doc.css(".marketing-article").each do |article|
#       	dest = Destination.new
#       	dest.title = article.css("h1").text
#       	dest.summary = article.css("p").text
#       	binding.pry
#     end
# 		# titles = doc.search("h3.title-heading").text
# 		# summaries = doc.search("p.deal-summary").text
# 		# binding.pry
# 	end

