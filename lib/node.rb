
class Node

  attr_accessor :nextnode, :surname, :supplies

  def initialize(surname, supplies = {})
    @surname = surname
    @nextnode = nil
    @supplies = supplies
  end


end
