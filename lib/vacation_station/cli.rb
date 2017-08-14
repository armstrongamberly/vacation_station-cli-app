#Our CLI controller
class VacationStation::CLI
	
	def call
		puts ">>>>>>>>>> 2017 Best in Budget Destinations <<<<<<<<<<"
		VacationStation::Scraper.scrape_options.each do |index| # make a method
			puts "#{index}"
		end
		menu
	end


	def menu
		input = nil
		while input != "exit"
			puts <<-DOC.gsub /^\s+/, ""
			Enter the number of a destination to learn more! type 'exit' to get outta here and go explore
			DOC
			input = gets.strip.downcase
			
			if input.to_i > 0
				puts ""
				puts VacationStation::Scraper.scrape_summary[input.to_i-1] #make a method
				puts ""
				
			elsif input == "list"
				VacationStation::Scraper.scrape_options.each do |index| #make a method
					puts "#{index}"
				end
			else
				puts "I don't see that option here..." #fix this so that it doesn't come after 'exit'
			end
		end
	end

	def goodbye
		puts "Thanks for checking out today's travel deals! Check back tomorrow for new deals!"
	end
end

