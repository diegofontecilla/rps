class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def option(player_option)
    @player_option = player_option
  end
end
