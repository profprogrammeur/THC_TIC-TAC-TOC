#TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
class Board
  attr_accessor :case_array

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  @a1 = BoardCase.new("a1")
  @a2 = BoardCase.new("a2")
  @a3 = BoardCase.new("a3")
  @b1 = BoardCase.new("b1")
  @b2 = BoardCase.new("b2")
  @b3 = BoardCase.new("b3")
  @c1 = BoardCase.new("c1")
  @c2 = BoardCase.new("c2")
  @c3 = BoardCase.new("c3")
  @case_array = [@a1,@a2,@a3,@b1,@b2,@b3,@c1,@c2,@c3]

  end

def print_board
      system "clear"
      puts   "     1   2   3" 
      puts   "   -------------"  
      puts "a  | #{@a1.value} | #{@a2.value} | #{@a3.value} |"
      puts   "   -------------"
      puts "b  | #{@b1.value} | #{@b2.value} | #{@b3.value} |" 
      puts   "   -------------" 
      puts "c  | #{@c1.value} | #{@c2.value} | #{@c3.value} |"
      puts   "   -------------" 

   end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory? (occupied_cases)
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  continue=true
    if occupied_cases.count>=9
      puts " FIN FAIM FEINT FEINS"
      continue=false
    end
  return continue    
  end

end