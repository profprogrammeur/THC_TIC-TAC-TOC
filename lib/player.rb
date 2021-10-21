require 'pry'
class Player
    attr_reader :name, :value

    def initialize(value)
      puts " "
      puts "Ton nom :"
      print ">"
      @name = gets.chomp.to_s
      @name = name
      @value = value
      puts " Salut #{name}, tu auras les #{value}"
    end
    
end
