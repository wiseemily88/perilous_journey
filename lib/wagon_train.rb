require 'pry'
require './lib/node'
require './lib/linked_list'

class WagonTrain
attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(surname, supplies = {})
    @list.append(surname, supplies)
  end

  def prepend(surname, supplies = {})
    @list.prepend(surname, supplies)
  end

  def insert(index, surname, supplies = {})
    @list.insert(index, surname, supplies)
  end

  def count
    @list.count
  end

end
