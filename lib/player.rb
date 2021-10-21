require 'pry'
class Player
    attr_reader :name, :value
 #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).

    def initialize(value)
      #TO DO : doit régler son nom et sa valeur
      puts " "
      puts "Ton nom :"
      print ">"
      @name = gets.chomp.to_s
      @name = name
      @value = value
      puts " Salut #{name}, tu auras les #{value}"
    end
    

end



# player1 = new.Player()

# binding.pry