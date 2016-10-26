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
    puts <<-DOC.gsub /^\s*/, ''
    1. Panic at the Disco
    2. Twenty One Pilots
    DOC
  end

  def menu
    input = nil
    while input != "exit"
      puts "\nPlease enter the number corresponding to the concert you\n"\
      "want to hear more about, type list to see the concerts again, or\n"\
      "type exit to leave Jukebox: "

      input = gets.strip.downcase

      case input
      when "1"
        puts "More info on P!ATD...\n"
      when "2"
        puts "More info on Twenty One Pilots...\n"
      when "list"
        list_concerts
      else
        puts "\nSorry, but Jukebox doesn't recognize that."
      end
    end
  end

  def goodbye
    puts "\nGoodbye! Thanks for using Jukebox! Check back soon for more concerts!"
  end

end
