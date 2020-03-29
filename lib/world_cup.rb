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
end
