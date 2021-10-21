require 'pry'

require_relative 'player'

class Game
    attr_accessor :current_player, :status, :board, :players

 def initialize
    puts ">Quel est ton nom ?"
      print "> "
      player_name = gets.chomp
      @player1 = Player.new(player_name, "X")
  end
  
end

