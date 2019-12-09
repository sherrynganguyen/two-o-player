##This is game set up and return the results
class Math_game
  attr_accessor :firstnum, :secondnum
  def calculation(player)
    @firstnum = rand(1..20)
    @secondnum = rand(1..20)
    puts "#{player.name}: What does #{@firstnum} plus #{@secondnum} equal?"
    answer = gets.chomp.to_i
  end
  def result
    answer == @firstnum + @secondnum ? ($result = true) : ($result = false)
  end
  def update_score(players)
  end
end
