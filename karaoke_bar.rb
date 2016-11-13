class Karaoke_Bar
  attr_reader :entry_fee
  attr_accessor :karaoke_rooms

  def initialize()
    @karaoke_rooms = []
    @entry_fee = 6
    @group_size = [].length
  end

  def can_afford_karaoke(person)
    if person.money > @entry_fee
      puts "Welcome!"
    end
  end

  def room_count()
    return @karaoke_rooms.count
  end

  def add_room(room)
    @karaoke_rooms << room
  end

  def add_rooms(rooms)
    for room in rooms
      add_room(room)
    end
  end

  def room_capacities(rooms)
    for room in rooms
      print room.capacity
    end
  end

  def does_group_fit(rooms)
    if room_capacities(rooms) < @group_size
      return "you can take room #{room}"
    else
      return "sorry, we don't have any rooms available"
    end
  end

end
