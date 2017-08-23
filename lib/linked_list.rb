require 'pry'
require './lib/node'
class LinkedList

attr_accessor :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def iterate_over_list(surname, supplies)
    until @head.nextnode == nil
      @head = @head.nextnode
    end
      @head.nextnode = Node.new(surname, supplies)
  end

  def append (surname, supplies = {})
    current_node = @head # can just use @head and not current_node and move into loop
    if @head == nil
      @head = Node.new(surname, supplies)
    else
      iterate_over_list(surname, supplies)

      #iterate_over_list(current_node)- make method

      # until current_node.nextnode == nil
      #   current_node = current_node.nextnode
      # end
      # current_node.nextnode = Node.new(surname)
    end
    @count += 1 # pull this out and make a new method
  end

  def prepend(surname, supplies = {})
    #temp = @head
    new_node = Node.new(surname, supplies)
    new_node.nextnode = @head
    @head = new_node
    @count += 1 #pull out
  end

  def insert (index, surname, supplies = {})
    current_node = @head

    (index - 1 ).times do
      current_node = current_node.nextnode
    end

    new_node = Node.new(surname, supplies)
    new_node.nextnode = current_node.nextnode
    current_node.nextnode = new_node
    @count += 1
  end

  def node_to_string
  current_node = @head
  additional_nodes = ""
    if @head == nil
    else
      additional_nodes = "The #{@head.surname} family"
      until current_node.nextnode == nil
        current_node = current_node.nextnode
        additional_nodes += ", followed by #{current_node.surname} family"
      end
      current_node.nextnode
    end
    additional_nodes
  end

  def find(index, number_of_nodes)
  current_node = @head
  returned_nodes = ""

    (index).times do
      current_node = current_node.nextnode
    end

    if number_of_nodes == 1
      returned_nodes = "The #{current_node.surname} family"
    else
      returned_nodes = "The #{current_node.surname} family"
      (number_of_nodes - 1).times do
        returned_nodes += ", followed by the #{current_node.nextnode.surname} family"
        current_node = current_node.nextnode
      end
    end
    returned_nodes
  end

  def include?(name_in_question)
  current_node = @head
  include_method_answer = ""

  until current_node.nextnode == nil
    if current_node.surname == name_in_question
      include_method_answer = true
    else
      include_method_answer = false
    end
    current_node = current_node.nextnode
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
