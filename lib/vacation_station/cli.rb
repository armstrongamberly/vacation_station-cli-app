#Our CLI controller
class VacationStation::CLI

	def call
		list_deals
		menu
		goodbye
	end

	def list_deals
		puts "Today's Destinations: "
		puts "\n"
		puts <<-DOC.gsub /^\s+/, ""
		1. Amelia Island, Florida
		2. Ireland & Europe
		3. Playa del Carmen
		DOC
	end

	def menu
			input = nil
		while input != "exit"
			puts <<-DOC.gsub /^\s+/, ""
			Enter the number of a destination to unlock the details of your deal!
			type list to see your options again or type exit to quit)
			DOC
			input = gets.strip.downcase
			case input
			when "1"
				puts "price - summary"
			when "2"
				puts "price - summary"
			when "3"
				puts "price - summary"
			when "list"
				list_deals
			else
				puts "I don't see that option here..."
			end
		end
	end

	def goodbye
		puts "Thanks for checking out today's travel deals! Check back tomorrow for new deals!"
	end
end
