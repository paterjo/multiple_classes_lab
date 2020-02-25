require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')

class PersonTest < MiniTest::Test
  def setup
    @person1 = Person.new("John Smith", 25)
  end

  def test_person_name
    assert_equal("John Smith", @person1.name)
  end

  def test_person_age
    assert_equal(25, @person1.age)
  end

end
