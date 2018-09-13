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

  def self.store_player_1_option(player_1_option)
    @player_1_option = player_1_option
  end

  def self.store_player_2_option(player_2_option)
    @player_2_option = player_2_option
  end

  def self.get_player_1_option
    @player_1_option
  end

  def self.get_player_2_option
    @player_2_option
  end
end
