class Application

  attr_accessor :player1, :player2, :game_board

	def initialize (player1, player2)
		@player1 = player1
		@player2 = player2
		@game_board = Board.new
  end 

  def perform
    @game_board.print_board
    occupied_cases = []
    while @game_board.victory?(occupied_cases,@player2.name)
      puts "#{@player1.name} quelle case X ? " 
      print "> "
      input_1 = gets.chomp.to_s 
      while occupied_cases.include? input_1
        puts "Case occupée bordel, une autre!"
        print "> "
        input_1 = gets.chomp.to_s
      end
        process(input_1,"X")
        occupied_cases.push(input_1)
        sleep(0.5)
        @game_board.print_board

        if @game_board.victory?(occupied_cases,@player1.name)==false
          
        then break end
      puts "#{@player2.name} quelle case O ?" 
      print "> "
      input_2 = gets.chomp.to_s
      while occupied_cases.include? input_2
        puts "Case occupée bordel, une autre!"
        print "> "
        input_2 = gets.chomp.to_s
      end
        process(input_2,"O")
        occupied_cases.push(input_2)
        sleep(0.5)
        @game_board.print_board
    end
  end

  def process(input, value)
    case input
      when "a1" then @game_board.case_array[0].value = value
      when "a2" then @game_board.case_array[1].value = value 
      when "a3" then @game_board.case_array[2].value = value
      when "b1" then @game_board.case_array[3].value = value
      when "b2" then @game_board.case_array[4].value = value 
      when "b3" then @game_board.case_array[5].value = value
      when "c1" then @game_board.case_array[6].value = value
      when "c2" then @game_board.case_array[7].value = value 
      when "c3" then @game_board.case_array[8].value = value
    else
      puts "Pas possible"
      print "> "
      input_retry = gets.chomp.to_s
      process(input_retry,value)
      sleep(0.5)
    end
  end

end












    # @game_board.case_array[2].value="X"
    # @game_board.a3.value="X"
    # @game_board.instance_variable_set(case_array[0].value)="X"
    # @game_board.instance_variable_set("@"+input,"X")
    # @game_board.print_board
