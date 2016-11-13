class Room
  attr_accessor :capacity, :room_number, :checked_in, :check_out

  def initialize(room_number, capacity)
    @capacity = capacity
    @playlist = []
    @room_number = room_number
    @checked_in = []
    @checked_out = []
  end

  def add_songs(songs)
    @playlist << songs
  end

  def song_count
    @playlist.count
  end

  def check_in(persons)
      @checked_in << persons
  end

  def check_in_guests( guests )
    for guest in guests 
      check_in(guest)
    end
  end

  def guest_count()
    return @checked_in.count
  end

  def check_out(persons)
      @checked_in.delete(persons)
  end

end