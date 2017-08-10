#Our CLI controller
class VacationStation::CLI

	def call
		list_deals
		menu
		goodbye
	end

	def list_deals
		puts "Today's Destinations: "
		puts <<-DOC.gsub /^\s+/, ""
		1. Amelia Island, Florida
		2. Ireland & Europe
		3. Playa del Carmen
		DOC
	end

	def menu
			input = nil
		while input != "exit"
			puts "Enter the number of a destination to unlock the details of your deal (or type exit to quit)"
			input = gets.strip.downcase
			case input
			when "1"
				puts "price - summary"
			when "2"
				puts "price - summary"
			when "3"
				puts "price - summary"
			end
		end
	end

	def goodbye
		puts "Thanks for checking out today's travel deals! Check back tomorrow for new deals!"
	end
end
