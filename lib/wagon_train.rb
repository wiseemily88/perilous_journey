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

  def supplies

    supplies_hash = Hash.new(0)
    current_node = @list.head
    until current_node == nil
      supplies_hash.merge!(current_node.supplies){|key, oldval, newval|  newval + oldval }
      current_node = current_node.nextnode
    end
    supplies_hash
  end

end
