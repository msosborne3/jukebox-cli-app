#CLI Controller
class Jukebox::CLI

  def call
    puts "Welcome to Jukebox!"
    list_concerts
    menu
    goodbye
  end

  def list_concerts
    puts "Here is a list of artists coming to the Memphis area:\n\n"

    #calls the scrape_concerts method and prints each artists name in a list
    @concerts = Jukebox::Concert.scrape_concerts
    @concerts.each.with_index(1) do |concert, i|
      puts "#{i}. #{concert.artist_name}"
    end
  end

  def menu
    input = nil
    #As long as the user does not type "exit," they can keep viewing concert info
    while input != "exit"
      puts "\nPlease enter the number corresponding to the concert you\n"\
      "want to hear more about, type list to see the concerts again, or\n"\
      "type exit to leave Jukebox: "

      input = gets.strip.downcase
      # if the input is a number on the list, information about that concert
      # is printed
      if input.to_i > 0
        if(@concerts[input.to_i - 1] != nil)
          the_concert = @concerts[input.to_i - 1]
          puts "\nArtist name: #{the_concert.artist_name}"
          puts "Date: #{the_concert.date}"
          puts "Location: #{the_concert.location}"
          puts "Buy tickets: #{the_concert.url}"
        else #If their input is a number not on the list, an error message is printed
          puts "\nSorry, but Jukebox doesn't recognize that."
        end
      elsif input == "list" #If they type "list," the list of concerts is printed again
        list_concerts
      elsif input == "exit" #If they type "exit," the program ends
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
