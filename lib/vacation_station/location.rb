class VacationStation::Location
	attr_accessor :name, :about

	@@all = []

	def initialize(name, about)
		@name = name
		@about = about
		@@all << self
	end

	def self.all
		@@all 
	end




end