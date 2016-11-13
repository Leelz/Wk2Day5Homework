require('minitest/autorun')
require('minitest/rg')
require_relative('../music')

class TestMusic < Minitest::Test

  def setup
    @track1 = Music.new("Bohemian Rhapsody", "Queen")
    @track2 = Music.new("I would walk", "The Proclaimers")
  end

def test_songs_name
  assert_equal("Bohemian Rhapsody", @track1.track)
end

def test_artist_name
  assert_equal("Queen", @track1.artist)
end

end