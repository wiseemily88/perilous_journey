require 'pry'
class Node

attr_accessor :nextnode, :surname

  def initialize(surname, nextnode = nil)
    @surname = surname
    @nextnode = nextnode
  end
end
