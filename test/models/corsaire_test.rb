require 'test_helper'

class CorsaireTest < ActiveSupport::TestCase

  def setup
    @corsaire = Corsaire.new(first_name: "Example Corsaire", age: 33)
  end

  test "should be valid" do
    assert @corsaire.valid?
  end

end
