class Game

  attr_reader :get_players

  def initialize(players)
    @get_players = players
  end

  def self.create(players)
    @game = Game.new(players)
  end

  def self.instance
    @game
  end

  def self.store_option(player_option)
    @player_option = player_option
  end

  def self.get_option
    @player_option
  end
end
