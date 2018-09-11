class Players

  def initialize(player_1, player_2 = TheComputer.new )
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_1
    player_name(name = @player_1)
  end

  def player_2
    player_name(name = @player_2)
  end

   private

   def player_name(name)
     return name if name.is_a?(String)
     'the computer'
   end
end
