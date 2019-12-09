# require 'active_support/all'

class Player
  attr_accessor :live, :name, :id
  def initialize(live, name, id)
    @live = live
    @id = id
    @name = "Player #{name}"
  end
  def name=(name)
    @name = name
  end
  def live_update
    @live -= 1
  end
end

# @player1 = Player.new(3, 1)
# @player2 = Player.new(3, 2)
