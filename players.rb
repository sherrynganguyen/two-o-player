require 'active_support/all'

class Player
  attr_accessor :live
  def initialize(live)
    $live = 3
  end
  def live_update(live)
    $live -= 1
  end
end