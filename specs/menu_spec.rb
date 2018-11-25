require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')
require_relative('../room.rb')
require_relative('../songs.rb')
require_relative('../menu.rb')

class MenuTest < MiniTest::Test

  def setup()
    @menu1 = Menu.new("Lager", 4)
  end

  def test_menu_has_item()
    assert_equal("Lager", @menu1.item)
  end

  def test_menu_has_price()
    assert_equal(4, @menu1.price)
  end







end
