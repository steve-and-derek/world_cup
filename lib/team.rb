class Team

  attr_reader :country, :eliminated, :players
  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def eliminated(elimination_status = false)
    @eliminated = elimination_status
  end

  def add_player(player)
    players << player
  end


end
