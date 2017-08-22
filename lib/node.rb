require 'pry'
class Node

attr_reader :surname
attr_accessor :nextnode


  def initialize(surname)
    @surname = surname
    @nextnode = nil
  end
end
