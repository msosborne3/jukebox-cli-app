class Jukebox::Concert
  attr_accessor :artist_name, :location, :date, :url

  def self.scrape_concerts
    @concert_list = []

    doc = Nokogiri::HTML(open("http://memphis.eventful.com/events/categories/music"))

    concerts = doc.css("li.clearfix")

    concerts.each do |concert|
      new_concert = self.new
      new_concert.artist_name = concert.css("h4").text
      new_concert.date = concert.css(".event-meta strong").text
      new_concert.location = concert.css(".event-meta span").text
      new_concert.url = concert.css("h4 a").attr("href")
      @concert_list << new_concert
    end

    @concert_list
  end
end
