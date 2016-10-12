require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "An album must have a name & artist" do
    # puts albums(:slippery_when_wet).valid?
    # puts "artist = #{albums(:slippery_when_wet).artist}"
    assert albums(:slippery_when_wet).valid?
    albums(:slippery_when_wet).name = nil
    assert_not albums(:slippery_when_wet).valid?

  end

  test "Slippery when wet was by Bon Jovi" do
    assert_equal albums(:slippery_when_wet).artist, artists(:bonjovi)
  end

  test "Can retrieve the correct Number of Albums" do
#for bonjovi is 2
    assert_equal artists(:beyonce).albums.size, 0
    assert_equal artists(:bonjovi).albums.size, 2
  end



end
