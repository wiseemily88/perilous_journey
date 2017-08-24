gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/wagon_train'
require 'pry'

class WagonTrainTest < Minitest::Test

  def test_Wagon_train_class_exists
    wt = WagonTrain.new
    assert_instance_of WagonTrain , wt
  end

  def test_List_method_iniates_linked_list
    wt = WagonTrain.new
    assert_equal nil, wt.list.head
  end

  def test_append_method_takes_a_parameter
    wt = WagonTrain.new
    wt.append("Burke")
    assert_equal "Burke", wt.list.head.surname
  end

  def test_append_method_takes_a_second_node
    wt = WagonTrain.new
    wt.append("Burke")
    wt.append("West")
    assert_equal "West", wt.list.head.nextnode.surname
  end

  def test_count_method_takes_two
    wt = WagonTrain.new
    wt.append("Burke")
    wt.append("West")
    assert_equal 2, wt.count
  end

  def test_append_method_adds_supplies
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    expected = {"pounds of food" => 200}
    assert_equal expected, wt.list.head.supplies
  end

  def test_prepend_method_adds_node_before_head_with_supplies
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.prepend("Hardy", {"spare wagon tongues" => 3})
    assert_equal "Hardy", wt.list.head.surname
  end

  def test_insert_method_adds_node_before_head
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.prepend("Hardy", {"spare wagon tongues" => 3})
    wt.insert(1, "West", {"pounds of food" => 300})
    assert_equal "West", wt.list.head.nextnode.surname
  end

  def test_count_method_takes_three
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.prepend("Hardy", {"spare wagon tongues" => 3})
    wt.insert(1, "West", {"pounds of food" => 300})
    assert_equal 3, wt.count
  end

  def test_supplies_method_returns_hash
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.prepend("Hardy", {"spare wagon tongues" => 3})
    wt.insert(1, "West", {"pounds of food" => 300})
    expected = {"spare wagon tongues" => 3, "pounds of food" => 500}
    assert_equal expected, wt.supplies
  end

end
