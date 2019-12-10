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
    puts "#{current_player.name}: YES! You are correct."
  else
    current_player.live_update
    puts "#{current_player.name}: Seriously? No!"
  end
  game.update_score(players)
  if (players[0].live < 1 || players[1].live < 1)
    game_over = true
    puts "#{players[0].live == 0 ? players[1].name : players[0].name} wins with a score of #{players[0].live == 0 ? players[1].live : players[0].live}/3"
    puts "------GAME OVER------"
    puts "Goodbye!"
  else
    game_over = false
    puts "------NEW TURN------"
  end
end