class Guests

  attr_reader :name, :favourite_song, :cash

  def initialize(name, favourite_song, cash)
    @name = name
    @favourite_song = favourite_song
    @cash = cash
  end

  def order_from_menu(item_ordered)
    # for order in menu
    #   if menu.item == item_ordered
    #     return order
    #   end
    # end

    @cash -= menu.price

  end



end
