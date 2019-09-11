require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save cliente without name" do
    cliente = Cliente.new
    assert_not cliente.save
  end

  test "should not save cliente with whitespace only (blank) name" do
    cliente = Cliente.new(:nome => "         ")
    assert_not cliente.save
  end

  test "should not save cliente with name longer than 50 char" do
    cliente = Cliente.new(:nome => "12345678901234567890123456789012345656778901234556")
    assert_not cliente.save
  end

  test "should not save cliente with name that isnt capitalized" do
    cliente = Cliente.new(:nome => "daniel")
    assert_not cliente.save
  end

  test "should not save cliente with lastname that isnt capitalized" do
    cliente = Cliente.new(:sobrenome => "sobrenome")
    assert_not cliente.save
  end
end
