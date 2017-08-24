
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'


class LinkedListTest < Minitest::Test

  def test_link_list_exists
    list = LinkedList.new
    assert_instance_of LinkedList , list
  end

  def test_Link_list_has_head
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_append_method_exists
    list = LinkedList.new
    new_node = list.append("Rhodes")
    assert_equal "Rhodes", list.head.surname
  end

  def test_append_first_node_is_head
    list = LinkedList.new
    node = list.append("Rhodes")
    refute nil, list.head
  end

  def test_appended_node_is_filled
    list = LinkedList.new
    node = list.append("Rhodes")
    assert_equal "Rhodes", list.head.surname
  end

  def test_appended_next_node_is_nil
    list = LinkedList.new
    list.append("Rhodes")
    assert_equal nil, list.head.nextnode
  end

  def test_appended_a_second_node
    list = LinkedList.new
    list.append("Brookes")
    list.append("Henderson")

    assert_equal "Henderson", list.head.nextnode.surname
  end

  def test_the_prepend_method_moves_the_old_head_to_nextnode
    list = LinkedList.new
    list.append("Brookes")
    list.append("Henderson")
    list.prepend("Mckinney")

    assert_equal "Brookes", list.head.nextnode.surname
  end

  def test_the_prepend_method_has_a_new_head
    list = LinkedList.new
    list.append("Brookes")
    list.append("Henderson")
    list.prepend("Mckinney")

    assert_equal "Mckinney", list.head.surname
  end

  def test_the_insert_method_adds_node_after_the_indexed_node
    list = LinkedList.new
    list.append("Henderson")
    list.prepend("Mckinney")
    list.insert(1, "Lawson")

    assert_equal "Lawson", list.head.nextnode.surname
  end

  def test_the_find_method_returns_Family_in_that_position
    list = LinkedList.new
    list.append("Brookes")
    list.prepend("Mckinney")
    list.insert(1, "Lawson")

    assert_equal "The Brookes family", list.find(2,1)
  end

  def test_the_find_method_returns_the_value_in_that_node_number_and_preceding_families
    list = LinkedList.new
    list.append("Brookes")
    list.prepend("Mckinney")
    list.insert(1, "Lawson")

    assert_equal "The Lawson family, followed by the Brookes family", list.find(1,2)
  end

  def test_the_include_method_is_true_when_the_node_exists
    list = LinkedList.new
    list.append("Brookes")
    list.prepend("Mckinney")
    list.insert(1, "Lawson")

    assert_equal true, list.include?("Brookes")
  end

  def test_the_include_method_returns_false_with_number
    list = LinkedList.new
    list.append("Henderson")
    list.prepend("Mckinney")
    list.insert(1, "Lawson")

    assert_equal false, list.include?("2")
  end

  def test_the_pop_method_removes_last_node
    list = LinkedList.new
    list.append("Henderson")
    list.prepend("Mckinney")
    list.insert(1, "Lawson")
    list.pop

    assert_equal "The Henderson family has died of dysentery", list.pop
  end

  def test_the_count_method_counts_nodes_for_all_methods
    list = LinkedList.new
    list.append("Henderson")
    list.prepend("Mckinney")

    assert_equal 2, list.count_nodes
  end

  def test_the_string_method_returns_the_entire_list
    list = LinkedList.new
    list.append("Brookes")
    list.append("Henderson")
    list.prepend("Mckinney")
    list.insert(1, "Lawson")

    assert_equal "The Mckinney family, followed by Lawson family, followed by Brookes family, followed by Henderson family", list.node_to_string
  end

end
