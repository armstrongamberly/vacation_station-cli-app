#Our CLI controller
class VacationStation::CLI
	
	def call
		puts ">>>>>>>>>> 2017 Best in Budget Destinations <<<<<<<<<<"
		VacationStation::Scraper.scrape_options.each do |index|
			puts "#{index}"
		end
		# list_options
		menu
	end

# 	def list_options
# 		puts ""

# 		puts "Enter the number of a destination to learn more!"
# 		input = gets.strip
# 		choice = VacationStation::Destinations.find(input.to_i)
# 		print_choice(choice)

# 		puts ""
# 		puts "Would you like to explore another destination? (y/n)"
# 		input = gets.strip.downcase

# end


	def menu
		input = nil
		while input != "exit"
			puts <<-DOC.gsub /^\s+/, ""
			Enter the number of a destination to learn more! type 'exit' to get outta here and go explore
			DOC
			input = gets.strip.downcase
			
			if input.to_i > 0
				summary
				
			elsif input == "list"
				list_options
			else
				puts "I don't see that option here..."
			end
		end
	end

	def goodbye
		puts "Thanks for checking out today's travel deals! Check back tomorrow for new deals!"
	end
end

