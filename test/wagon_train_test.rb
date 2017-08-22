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

end
