class Application

  	attr_accessor :player1, :player2, :game_board

	def initialize (player1, player2)
		@player1 = player1
		@player2 = player2
		@game_board = Board.new
  end 

  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    # 
    game=new.Game
  end

end

