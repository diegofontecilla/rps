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
end
