require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../room.rb')
require_relative('../songs.rb')
require_relative('../menu.rb')

class GuestsTest < MiniTest::Test

  def setup()
    @guest1 = Guests.new("Mike","Wonderwall", 50)
  end

  def test_guest_has_name()
    assert_equal("Mike", @guest1.name)
  end

  def test_guest_has_favourite_song()
    assert_equal("Wonderwall", @guest1.favourite_song)
  end

  def test_guest_has_cash()
    assert_equal(50, @guest1.cash)
  end

  def test_guest_can_order_from_menu()
    menu = Menu.new("Lager", 4)
    # menu2 = Menu.new("Coke", 2)
    # menu3 = Menu.new("Cheeseburger", 5)
    # menu = [menu1, menu2, menu3]
    # menu4 = Menu.new(menu)
    # result = @menu.order_from_menu("Cheeseburger")
    @guest1.order_from_menu(menu)
    assert_equal(46, @guest1.cash)
  end




end
