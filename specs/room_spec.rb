require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../room.rb')
require_relative('../songs.rb')
require_relative('../menu.rb')

class RoomTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Wonderwall")
    @song2 = Song.new("Lucky Man")
    @song3 = Song.new("Ruby")
    songs = [@song1, @song2, @song3]
    @room1 = Room.new("Room 1", songs, 500, 5)
    @guest1 = Guests.new("Dave", "Angie", 100)
    @guest2 = Guests.new("John", "Supersonic", 100)
    @guest3 = Guests.new("Bill", "Knocking on heavens door", 100)
    @guest4 = Guests.new("Arran", "Baby Shark", 10)
  end

  def test_room_has_number()
    assert_equal("Room 1", @room1.room_number)
  end

def test_room_has_till()
  assert_equal(500, @room1.till)
end

def test_room_has_songs()
  assert_equal(3, @room1.song_list.count)
end

def test_room_has_capacity()
  assert_equal(0, @room1.room_capacity.count)
end

def test_room_has_entry_fee()
  assert_equal(5, @room1.entry_fee)
end

def test_guest_can_check_in()
  # @room1.room_is_full(@room1, @guest1)
  @room1.add_guest_to_room(@guest1)
  assert_equal(1, @room1.room_capacity.count)
end

def test_guest_leaves_room()
  @room1.add_guest_to_room(@guest1)
  @room1.add_guest_to_room(@guest2)
  @room1.guest_leaves_room(@guest1)
  assert_equal(1, @room1.room_capacity.count)
end

def test_room_is_full()
  @room1.add_guest_to_room(@guest1)
  @room1.add_guest_to_room(@guest2)
  @room1.add_guest_to_room(@guest3)
  @room1.add_guest_to_room(@guest4)
  result = @room1.room_is_full(@room1, @guest4)
  assert_equal("Sorry we're full!", result)

end

def test_room_charges_entry_fee()
  @room1.charge_entry_fee(@room1.entry_fee)
  assert_equal(505, @room1.till)

end

def test_guest_can_choose_song__true()
  result = @room1.guest_chooses_song("Lucky Man")
  assert_equal("You're up next!", result)
end

def test_guest_can_choose_song__false()
  result = @room1.guest_chooses_song("Live forever")
  assert_equal("Sorry we've not got that.", result)
end


end
