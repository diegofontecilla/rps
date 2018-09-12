class GameTwo

  attr_reader :the_option

  def initialize(player_option)
    @the_option = player_option
  end

  def self.create(player_option)
    @option = GameTwo.new(player_option)
  end

  def self.instance
    @option
  end
end
