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
    @live = @live - 1
  end
end
