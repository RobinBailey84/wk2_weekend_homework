require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../room.rb')
require_relative('../songs.rb')
require_relative('../menu.rb')

class SongTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Wonderwall")
  end

def test_songs_has_title()
  assert_equal("Wonderwall", @song1.song_title)
end















end
