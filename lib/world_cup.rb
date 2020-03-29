class WorldCup

  attr_reader :year, :teams
  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def all_active_teams
    @teams.find_all {|team| !team.eliminated?}
  end

  def active_players_by_position(position)
    all_active_teams.map {|team| team.players_by_position(position)}.flatten
  end

  def all_players
    @teams.map {|team| team.players}.flatten
  end

  def all_players_by_position
    all_players.group_by {|player| player.position}
  end
end
