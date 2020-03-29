require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/team'

class TeamTest < Minitest::Test

  def test_it_exists
    team = Team.new("France")

    assert_instance_of Team, team
  end

  def test_it_has_attributes
    team = Team.new("France")

    assert_equal "France", team.country
  end

  def test_can_be_eliminated

  end



end


# pry(main)> team.eliminated?
# # => false
#
# pry(main)> team.eliminated = true
#
# pry(main)> team.eliminated?
# # => true
#
# pry(main)> team.players
# # => []
#
# pry(main)> mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
# # => #<Player:0x00007fe0d02bd280...>
#
# pry(main)> pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
# # => #<Player:0x00007fe0d0851138...>
#
# pry(main)> team.add_player(mbappe)
#
# pry(main)> team.add_player(pogba)
#
# pry(main)> team.players
# # => [#<Player:0x00007fe0d02bd280...>, #<Player:0x00007fe0d0851138...>]
#
# pry(main)> team.players_by_position("midfielder")
# # => [#<Player:0x00007fe0d0851138...>]
#
# pry(main)> team.players_by_position("defender")
# # => []
