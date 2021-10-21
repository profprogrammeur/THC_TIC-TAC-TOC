require 'pry'
class Player
    attr_reader :player_name, :value
 #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).

    def initialize(value)
      #TO DO : doit régler son nom et sa valeur
      puts "Ecris ton nom de combattant:"
      print ">"
      @player_name = gets.chomp.to_s
      @value = value
      puts " Salut #{@player_name}, bienvenue. Tu aura le signe #{@value}"
      # @value = value
      # puts=player_name
    end
    

end



# player1 = new.Player()

# binding.pry