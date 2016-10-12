require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "An Artist must have a name" do
    red_hot_chilli_peppers = Artist.new

    assert_not red_hot_chilli_peppers.valid? "An Artist without a name is invalid."
    red_hot_chilli_peppers.save
    red_hot_chilli_peppers.name = "Kanye"
    assert red_hot_chilli_peppers.valid?  "Somehow Kanye is not a valid name."
  end

# did put somethign in the wrong place.

  test "Bon Jovi has the correct number of Albums" do
    #for bonjovi is 2
    assert_includes artists(:bonjovi).albums, albums(:slippery_when_wet)
    assert_includes artists(:bonjovi).albums, albums(:bounce)
  end

end
