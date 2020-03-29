class WorldCup

  attr_reader :year, :teams
  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)

    active_teams = @teams.find_all do |team|
      !team.eliminated?
    end

    players_by_position = []
    active_teams.each do |team|
      players_by_position << team.players_by_position(position)
    end
    players_by_position.flatten
  end

  def all_players_by_position
    all_players = @teams.map do |team|
      team.players
    end.flatten

    grouped_all_players = all_players.group_by do |player|
      player.position
    end
    grouped_all_players
  end
end
