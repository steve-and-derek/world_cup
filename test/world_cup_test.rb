require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/team'
require './lib/world_cup'

class WorldCupTest < Minitest::Test

  def setup
    @france = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @france.add_player(@mbappe)
    @france.add_player(@pogba)

    @croatia = Team.new("Croatia")
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})
    @vida = Player.new({name: "Domagoj Vida", position: "defender"})
    @croatia.add_player(@odric)
    @croatia.add_player(@vida)

    @world_cup = WorldCup.new(2018, [@france, @croatia])
  end

  def test_it_exists

    assert_instance_of WorldCup, @world_cup
  end

  def test_it_has_attributes

    assert_equal 2018, @world_cup.year
    assert_equal [@france, @croatia], @world_cup.teams
  end




end

# ## Iteration 3
#
# Use TDD to create a `WorldCup` class that responds to the following interaction pattern. For the `active_players_by_position` method, an active player is a player that is on a team that is not eliminated.

# world_cup.year
# # => 2018
#
# world_cup.teams
# # => [#<Team:0x00007f936a313698...>, #<Team:0x00007f936a3afea8...>]
#
# world_cup.active_players_by_position("midfielder")
# # => [#<Player:0x00007f936c035eb0...>, #<Player:0x00007f936a3595f8...>]
#
# croatia.eliminated = true
#
# world_cup.active_players_by_position("midfielder")
# # => [#<Player:0x00007f936c035eb0...>]
# ```
