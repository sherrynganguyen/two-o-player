require './players'
require './game'

players = [Player.new(3, 1, "P1"), Player.new(3, 2, "P2")]
game = Math_game.new

game_over = false

play_turn = players.cycle

while game_over == false
  current_player = play_turn.next
  game.play_game(current_player)

  if game.result
    puts "YES! You are correct."
  else
    current_player.live_update
    puts "Seriously? No!"
  end

  game.update_score(players)
    game_over = false
    puts "------NEW TURN------"
  if (players[0].live == 0 || players[1].live == 0)
    game_over = true
    puts " wins with a score of /3"
    puts "------GAME OVER------"
    puts "Goodbye!"
  end
end