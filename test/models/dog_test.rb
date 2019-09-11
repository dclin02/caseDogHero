require 'test_helper'

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true 
  # end
  test "should not save dog without name" do
    dog = Dog.new
    assert_not dog.save
  end

  test "should not save dog with whitespace only (blank) name" do
    dog = Dog.new(:nome => "         ")
    assert_not dog.save
  end

  test "should not save dog with name longer than 50 char" do
    dog = Dog.new(:nome => "12345678901234567890123456789012345656778901234556")
    assert_not dog.save
  end
end
