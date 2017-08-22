require 'pry'
require './lib/node'
class LinkedList

attr_accessor :head, :count

  def initialize
  @head = nil
  @count = 0
  end


  def append (surname)
  current_node = @head
    if @head == nil
      @head = Node.new(surname)
    else
      until current_node.nextnode == nil
        current_node = current_node.nextnode
      end
      current_node.nextnode = Node.new(surname)
    end
    @count += 1
  end

  def prepend(surname)
  temp = @head
  new_node = Node.new(surname)
  new_node.nextnode = temp
  @head = new_node
  @count += 1
  end

  def insert (index, surname)
    current_node = @head
    temp = current_node.nextnode
    (index - 1).times do
      current_node = current_node.nextnode
    end

    new_node = Node.new(surname)
    new_node.nextnode = temp
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

  def pop
  current_node = @head
  nextnode = nil
  pop_message = ""

  until current_node.nextnode == nil
  if current_node.nextnode == nil
    nextnode.nextnode = current_node.nextnode
  else
    current_node = nextnode
  end
  current_node = current_node.nextnode

  end
  pop_message = "The #{current_node.surname} has died of dysentery"
  end
end