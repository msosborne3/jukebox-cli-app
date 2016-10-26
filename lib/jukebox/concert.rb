class Jukebox::Concert
  attr_accessor :artis_name, :location, :data

  def self.concerts
    #Should return a bunch of instances of concerts
    puts "Test"
    concert_1 = Concert.new
    concert_1.artist_name = "Panic! at the Disco"
    concert_1.location = "Fedex Forum - Memphis, TN"
    concert_1.date = "April 8, 2017"

    concert_2 = Concert.new
    concert_2.artist_name = "Twenty One Pilots"
    concert_2.location = "Fedex Forum - Memphis, TN"
    concert_2.date = "March 4, 2017"

    [concert_1, concert_2]
  end
end
