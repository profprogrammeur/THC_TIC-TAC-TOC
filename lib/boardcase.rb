class BoardCase
    attr_accessor :value, :id
#TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case

  
  def initialize(id)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    # board = [" "," "," "," "," "," "," "," "," "]
    @value=" "
    @id=id
  end
  
  # def print_case(value)
  #   @value=value
  #   return value
  # end


end