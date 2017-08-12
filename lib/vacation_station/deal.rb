class VacationStation::Deal
	attr_accessor :location, :title, :price, :summary, :url

	def self.today
		# scrape travelzoo top 20 and return details based on that data
		self.scrape_deals
		
	end

	def self.scrape_deals

		deal_1 = self.new
		deal_1.location = "San Jose, Arenal Volcano & Monteverde Cloud Forest"
		deal_1.title = "title"
		deal_1.price = "$799"
		deal_1.summary = "This quaint beachfront hotel...."
		deal_1.url = "https://www.travelzoo.com/top20/?pageType=Homepage"

		deal_2 = self.new
		deal_2.location = "Amelia Island, Florida"
		deal_2.title = "title"
		deal_2.price = "$125"
		deal_2.summary = "This quaint beachfront hotel...."
		deal_2.url = "https://www.travelzoo.com/top20/?pageType=Homepage"

		deal_3 = self.new
		deal_3.location = "Ireland & Europe"
		deal_3.title = "title"
		deal_3.price = "$125"
		deal_3.summary = "This quaint beachfront hotel...."
		deal_3.url = "https://www.travelzoo.com/top20/?pageType=Homepage"

		deal_4 = self.new
		deal_4.location = "Playa del Carmen"
		deal_4.title = "title"
		deal_4.price = "$125"
		deal_4.summary = "This quaint beachfront hotel...."
		deal_4.url = "https://www.travelzoo.com/top20/?pageType=Homepage"

		[deal_1, deal_2, deal_3, deal_4]
	end
end
