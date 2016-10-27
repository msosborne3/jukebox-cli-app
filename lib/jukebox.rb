require 'open-uri'
require 'nokogiri'

require_relative "./jukebox/version"
require_relative './jukebox/cli'
require_relative './jukebox/concert'

#File acts as environment so that it is the file that
#jukebox can require and it can require everything else
