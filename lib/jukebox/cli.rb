#CLI Controller
class Jukebox::CLI

  def call
    list_concerts
    menu
    goodbye
  end

  def list_concerts
    puts "Welcome to Jukebox!"
    puts "Here is a list of upcoming concerts in the Memphis area:\n\n"
    puts <<-DOC.gsub /^\s*/, ''
    1. Panic at the Disco
    2. Twenty One Pilots
    DOC
  end

  def menu
    puts "\nPlease enter the number corresponding to the concert you\n"\
    "want to hear more about."
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      case input
      when "1"
        puts "More info on P!ATD..."
      when "2"
        puts "More info on Twenty One Pilots..."
      end
    end
  end

  def goodbye
    puts "Goodbye! Thanks for using Jukebox! Check back soon for more concerts!"
  end

end
