require 'test_helper'

class PasseadoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save passeadore without name" do
    passeadore = Passeadore.new
    assert_not passeadore.save
  end

  test "should not save passeadore with whitespace only (blank) name" do
    passeadore = Passeadore.new(:nome => "         ")
    assert_not passeadore.save
  end

  test "should not save passeadore with name longer than 50 char" do
    passeadore = Passeadore.new(:nome => "12345678901234567890123456789012345656778901234556")
    assert_not passeadore.save
  end
end
