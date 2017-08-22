gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'


# test it exists
# test it has a name
# test it has a next_node

class NodeTest < Minitest::Test

def test_node_exists
  node = Node.new("Burke")
  assert_instance_of Node , node
end

def test_node_has_surname
  node = Node.new("Burke")
  assert_equal "Burke", node.surname
end

def test_node_has_next_node
  node = Node.new("Burke")
  assert_equal nil, node.nextnode
end
end
