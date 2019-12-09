##This is game set up and return the results

class Math_game
  attr_accessor :first, :second

  def calculation
    @first = rand(1..20)
    @second = rand(1..20)
    puts "What does #{@first} plus #{@second} equal?"
    result = gets.chomp
    puts result
    result == @first + @second ? (puts "YES! You are correct.") : (puts "Seriously? No!")
    
  end

end

game = Math_game.new
game.calculation
