# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './players'
require './game'

## Your test code can go here

binding.pry

pp @players