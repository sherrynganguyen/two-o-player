# This is the main entrypoint into the program
# It requires the other files/gems that it needs

# require 'pry'
require './players'
require './game'

player = [Player.new(3, 1, P1), Player.new(3, 2, P2)]
game = Math_game.new
game.calculation(player.first)
class Game_result
  # game.calculation(player.first)
  $result ? (puts "YES! You are correct.") : (puts "Seriously? No!")
end