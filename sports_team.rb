class SportsTeam
  attr_accessor :team_name, :players, :coach, :league

  def initialize (team, roster, staff, score)
    @team_name = team 
    @players = roster 
    @coach = staff
    @league = score

  end

  def add_new_player(new_player)
    @players.unshift("#{new_player}") 

  end

  def find_player(player_name)
    for player in @players
      if player == player_name 
        return "#{player_name} has been found" 

      end
    return "No. He is not here."

    end
  end

def award_points(victory)
  if victory = true
    @league += 3
elsif victory = false
  @league -= 3

end
  end













end