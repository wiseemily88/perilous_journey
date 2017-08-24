
require './lib/node'
class LinkedList

  attr_accessor :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def iterate_over_linked_list(surname, supplies)
    until @head.nextnode == nil
      @head = head.nextnode
    end
      @head.nextnode = Node.new(surname, supplies)
  end

  def count_nodes
    until @head.nextnode == nil
      @head = head.nextnode
      @count += 1
    end
      @count += 1
  end

  def append (surname, supplies = {})
    if @head == nil
      @head = Node.new(surname, supplies)
    else
      iterate_over_linked_list(surname, supplies)
    end
  end

  def prepend(surname, supplies = {})
    new_node = Node.new(surname, supplies)
    new_node.nextnode = @head
    @head = new_node
  end

  def insert (index, surname, supplies = {})
    (index - 1 ).times do
      @head = @head.nextnode
    end

    new_node = Node.new(surname, supplies)
    new_node.nextnode = @head.nextnode
    @head.nextnode = new_node
  end

  def node_to_string
    if @head == nil
    else
      additional_nodes = "The #{@head.surname} family"
      until @head.nextnode == nil
        @head = @head.nextnode
        additional_nodes += ", followed by #{@head.surname} family"
      end
      @head.nextnode
    end
    additional_nodes
  end


  def find(index, number_of_nodes)
    (index).times do
      @head = @head.nextnode
    end

      if number_of_nodes == 1
        returned_nodes = "The #{@head.surname} family"
      else
        returned_nodes = "The #{@head.surname} family"
          (number_of_nodes - 1).times do
            returned_nodes += ", followed by the #{@head.nextnode.surname} family"
            @head = @head.nextnode
          end
      end
    returned_nodes
  end

  def include?(name_in_question)
     until @head == nil
       if @head.surname == name_in_question
         include_method_answer = true
       else
         include_method_answer = false
       end
       @head = @head.nextnode
      end
    include_method_answer
  end

  def pop(current_node = @head)
    until current_node.nextnode == nil
      current_node = current_node.nextnode
    end
      tail = current_node.surname
      current_node = nil
      "The #{tail} family has died of dysentery"
  end

end
