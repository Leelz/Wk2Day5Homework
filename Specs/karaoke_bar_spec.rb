require("minitest/autorun")
require("minitest/rg")
require_relative("room")
require_relative("music")
require_relative("person")
require_relative("karaoke_bar")

class TestKaraoke_Bar < Minitest::Test

  def setup
    @karaoke_bar = Karaoke_Bar.new
    @room1 = Room.new("Room 1", 6)
    @room2 = Room.new("Room 2", 3)
    @room3 = Room.new("Room 3", 8)
    @track1 = Music.new("I would walk", "The Proclaimers")
    @track2 = Music.new("Charming Man", "The Smiths")
    @track3 = Music.new("8 Mile", "Eminem")
    @person1 = Person.new("Adam", 20)
    @person2 = Person.new("Harry", 20)
    @person2 = Person.new("Hermione", 20)  
  end

  def test_entry_fee
    assert_equal(6, @karaoke_bar.entry_fee)
  end

  def test_can_guest_afford_karaoke
    @karaoke_bar.can_afford_karaoke(@person1)
    assert_equal(@karaoke_bar.can_afford_karaoke(@person1), "Welcome!")
  end

  def test_rooms_added
    @karaoke_bar.add_room(@room1)
    @karaoke_bar.add_room(@room2)
    assert_equal(2, @karaoke_bar.room_count)
  end

  def test_add_multiple_rooms
    all_rooms = [@room1, @room2, @room3]
    @karaoke_bar.add_rooms(all_rooms)
    assert_equal(3, @karaoke_bar.room_count)
  end

  def test_room_capacities
    all_rooms = [@room1, @room2, @room3]
    @karaoke_bar.room_capacities(all_rooms)
    assert_equal(3, @karaoke_bar.room_capacities(all_rooms))
  end

  def test_does_room_fit_group
    all_rooms = [@room1, @room2, @room3]
    @karaoke_bar.does_group_fit(all_rooms)
    assert_equal(3, @karaoke_bar.does_group_fit(all_rooms))
  end

end