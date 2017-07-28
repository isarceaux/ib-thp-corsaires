require 'test_helper'

class CorsaireTest < ActiveSupport::TestCase

  def setup
    @corsaire = Corsaire.new(first_name: "Example Corsaire", age: 33)
  end

  test "should be valid" do
    assert @corsaire.valid?
  end

  test "first_name should be present" do
    @corsaire.first_name = "  "
    assert_not @corsaire.valid?
  end

  test "age should be present" do
    @corsaire.age = "  "
    assert_not @corsaire.valid?
  end

  test "first_name should not be too long" do
    @corsaire.first_name = "a" * 21
    assert_not @corsaire.valid?   
  end

  test "age should be more than 15" do
    @corsaire.age = 8
    assert_not @corsaire.valid?   
  end

  test "age should be less than 120" do
    @corsaire.age = 130
    assert_not @corsaire.valid?   
  end

  test "slack_handle should not contain spaces" do
    @corsaire.slack_handle = "test like that"
    assert_not @corsaire.valid?   
  end

  test "github_handle should not contain spaces" do
    @corsaire.github_handle = "test like that"
    assert_not @corsaire.valid?   
  end

end
