#Our CLI controller
class VacationStation::CLI

	def call
		list_deals
		menu
		goodbye
	end

	def list_deals
		@deals = VacationStation::Deal.today
		@deals.each.with_index(1) do |deal, i|
			puts "#{i}. #{deal}"
		end
	end

	def menu
		input = nil
		while input != "exit"
			puts <<-DOC.gsub /^\s+/, ""
			Enter the number of a destination to unlock the details of your deal!
			type list to see your options again or type exit to quit)
			DOC
			input = gets.strip.downcase
			
			if input.to_i > 0
				puts @deals[input.to_i - 1]
			elsif input == "list"
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
