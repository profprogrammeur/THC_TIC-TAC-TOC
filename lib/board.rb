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

  @a2.value="X" #test

  end

def print_board
      puts   "     1   2   3" 
      puts   "   -------------"  
      puts "A  | #{@a1.value} | #{@a2.value} | #{@a3.value} |"
      puts   "   -------------"
      puts "B  | O | O | O |" 
      puts   "   -------------" 
      puts "C  | O | O | O |" 
      puts   "   -------------" 

   end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul

    
  end

end