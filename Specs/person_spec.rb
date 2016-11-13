require('minitest/autorun')
require('minitest/rg')
require_relative('person')

class TestPerson < Minitest::Test

  def setup
    @person = Person.new("Adam", 20)
  end

  def test_person_name
    assert_equal("Adam", @person.name)
  end

  def test_money_on_person
    assert_equal(20, @person.money)
  end
end