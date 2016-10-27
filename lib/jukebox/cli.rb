#CLI Controller
class Jukebox::CLI

  def call
    puts "Welcome to Jukebox!"
    list_concerts
    menu
    goodbye
  end

  def list_concerts
    puts "Here is a list of upcoming concerts in the Memphis area:\n\n"

    @concerts = Jukebox::Concert.concerts
    @concerts.each.with_index(1) do |concert, i|
      puts "#{i}. #{concert.artist_name} - #{concert.date}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "\nPlease enter the number corresponding to the concert you\n"\
      "want to hear more about, type list to see the concerts again, or\n"\
      "type exit to leave Jukebox: "

      input = gets.strip.downcase
      if input.to_i > 0
        the_concert = @concerts[input.to_i - 1]
        puts "\nArtist name: #{the_concert.artist_name}"
        puts "Date: #{the_concert.date}"
        puts "Location: #{the_concert.location}"
      elsif input == "list"
        list_concerts
      elsif input == "exit"
        break
      else
        puts "\nSorry, but Jukebox doesn't recognize that."
      end
    end
  end

  def goodbye
    puts "\nGoodbye! Thanks for using Jukebox! Check back soon for more concerts!"
  end

end
