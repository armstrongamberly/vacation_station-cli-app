class VacationStation::Destinations
  attr_accessor :location, :summary

  @@all = []

  def initialize(hash = {})
    hash.each do |k, v|
      self.send("#{k}=", v)
    end
    @@all << self
  end

  def update_details
    doc = Nokogiri::HTML(open(self.url))

    @location = doc.css("h1").text.strip
    @summary = doc.css("p").text.strip

    locations = doc.css("marketing-article").children.css("h1").collect {|location| location.text}
  end

  def self.all
    @@all
  end

  def self.find(index)
    self.all[index-1]
  end

end