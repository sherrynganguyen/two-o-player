##This is game set up and return the results
class Math_game
  attr_accessor :firstnum, :secondnum
  def play_game(player)
    @firstnum = rand(1..20)
    @secondnum = rand(1..20)
    @result = @firstnum + @secondnum
    puts "#{player.name}: What does #{@firstnum} plus #{@secondnum} equal?"
    @answer = gets.chomp.to_i
  end
  def result
    @answer == @result ? true : false
  end

  def update_score(players)
    puts "#{players.first.id}: #{players.first.live}/3 vs #{players.last.id}: #{players.last.live}/3"
  end
end
