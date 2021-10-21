class Board
  attr_accessor :case_array

  def initialize
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

  def victory? (occupied_cases,name)
  continue=true
    if  (@a1.value == @a2.value && @a2.value == @a3.value && @a1.value!=" ") ||
        (@b1.value == @b2.value && @b2.value == @b3.value && @b1.value!=" ") ||
        (@c1.value == @c2.value && @c2.value == @c3.value && @c1.value!=" ") ||
        (@a1.value == @b2.value && @b2.value == @c3.value && @a1.value!=" ") ||
        (@c1.value == @b2.value && @b2.value == @a3.value && @c1.value!=" ") 
      puts "#{name} a gagné ! ! ! "
      continue=false
      sleep(1)
    elsif occupied_cases.count>=9
      puts " Match Nullissime"
      puts " FIN FAIM FEINT FEINS"
      continue=false
    end
  return continue    
  end

end