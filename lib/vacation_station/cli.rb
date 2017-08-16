#Our CLI controller
class VacationStation::CLI
	
	def call
		puts ""
		puts "          >>>>>>>>>> 2017 Best in Budget Destinations <<<<<<<<<<"
		puts ""
		VacationStation::Scraper.scrape_options
		list
		menu
	end

	def list
		VacationStation::Location.all.each do |location|
			puts "#{location.name}"
		end
	end


	def menu
		input = nil
		while input != "exit"
			puts <<-DOC.gsub /^\s+/, ""
			Enter the number of a destination to learn more! type 'exit' to get outta here and go explore or type 'list' to view your options again.
			DOC
			input = gets.strip.downcase
			
			if input.to_i > 0 && input.to_i < 11
				index = input.to_i-1
				puts ""
				puts VacationStation::Location.all[index].about
				puts ""
				
			elsif input == "list"
				list
			elsif input == "exit"
				goodbye
			else
				puts "I don't see that option here...please choose from the list below"
				list 
			end
		end
	end

	def goodbye
		puts "          Thanks for checking out today's travel deals! Check back tomorrow for new deals!"

	end
end
