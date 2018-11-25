class Room

  attr_reader :room_number, :song_list, :till, :room_capacity, :entry_fee

  def initialize(room_number, song_list, till, entry_fee)
    @room_number = room_number
    @song_list = song_list
    @till = till
    @room_capacity = []
    @entry_fee = entry_fee

  end

  def add_guest_to_room(guest)
    # if room_is_full(room, guest) == true
      @room_capacity << guest
      # @entry_fee += room.till
    # end
  end

  def guest_leaves_room(guest_leaving)
    @room_capacity.delete(guest_leaving)
  end

  def room_is_full(room, guest)
    if room.room_capacity.count <= 3
      return true
    else
      return "Sorry we're full!"
    end
  end

  def charge_entry_fee(entry_fee)
    @till += entry_fee
  end

  def guest_chooses_song(song_choice)
    for song in @song_list
      if song.song_title == song_choice
        return "You're up next!"
      end
    end
    return "Sorry we've not got that."

  end


end
