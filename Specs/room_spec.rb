require('minitest/autorun')
require('minitest/rg')
require_relative('../Room')
require_relative('../Music')
require_relative('../Person')

class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Room 1", 6)
    @room2 = Room.new("Room 2", 3)
    @room3 = Room.new("Room 3", 8)
    @track1 = Music.new("Bohemian Rhapsody", "Queen")
    @track2 = Music.new("I would walk", "The Proclaimers")
    @track3 = Music.new("Charming Man", "The Smiths")
    @track4 = Music.new("8 Mile", "Eminem")
    @person1 = Person.new("Adam", 20)
    @person2 = Person.new("Harry", 20)
    @person2 = Person.new("Hermione", 20)
    @person2 = Person.new("Ron", 20)
  end

  def test_has_capacity
    assert_equal(3, @room2.capacity)
  end

  def test_room_number
    assert_equal("Room 2", @room2.room_number)
  end

  def test_can_add_songs
    @room1.add_songs(@track1)
    @room1.add_songs(@track2)
    @room1.add_songs(@track3)
    @room1.add_songs(@track4)
    assert_equal(@room1.song_count, 4)
  end

  def test_starts_with_no_guests
    assert_equal(@room1.guest_count(), 0)
  end

  def test_guest_check_in
    @room1.check_in(@person1)
    assert_equal(@room1.guest_count, 1)
  end

  def test_can_add_guests
    dudes = [@person1, @person2]
    @room1.check_in_guests(dudes)
    assert_equal(2, @room1.guest_count)
  end

  def test_add_multiple_guests
    dudes = [@person1, @person2, @person2, @person4]
    @room2.check_in_guests(dudes)
    assert_equal(4, @room2.guest_count)
  end

  def test_guest_check_out
    @room1.check_in(@person1)
    @room1.check_in(@person2)
    assert_equal(@room1.guest_count, 2)
    @room1.check_out(@person1)
    assert_equal(@room1.guest_count, 1)
  end

end