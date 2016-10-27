class Jukebox::Concert
  attr_accessor :artist_name, :location, :date, :url

  def self.scrape_concerts
    @concert_list = []

    #Opens the memphis eventful concert website and saves the HTML to doc
    doc = Nokogiri::HTML(open("http://memphis.eventful.com/events/categories/music"))

    #Saves the list of concerts
    concerts = doc.css("li.clearfix")

    #Scrapes information about a concert and creates a corresponding object
    concerts.each do |concert|
      new_concert = self.new
      new_concert.artist_name = concert.css("h4").text
      new_concert.date = concert.css(".event-meta strong").text
      new_concert.location = concert.css(".event-meta span").text
      new_concert.url = concert.css("h4 a").attr("href")
      #adds the object to the @concert_list array
      @concert_list << new_concert
    end

    #Returns the concert_list array
    @concert_list
  end
end
