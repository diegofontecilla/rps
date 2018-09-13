class Players

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_1_name
    player_name(@player_1)
  end

  def player_2_name
    player_name(@player_2)
  end

   private

   def player_name(name)
     return name if name != ""
     'the computer'
   end
end
