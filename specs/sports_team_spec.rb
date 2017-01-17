require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSports_team < Minitest::Test  

  def setup
    @pottstown = SportsTeam.new("Pottstown Butchers", ["Billy Beef", "Peter Pork", "Larry Lamb"], "Mr Lecter", 0)
  end

  def test_get_team_name

    response = @pottstown.team_name

    assert_equal("Pottstown Butchers", response)

  end

  def test_get_team_roster

    response = @pottstown.players

    assert_equal(["Billy Beef", "Peter Pork", "Larry Lamb"], response)

  end

  def test_get_team_coach
    response = @pottstown.coach

    assert_equal("Mr Lecter", response)

  end

  def test_set_team_coach

    @pottstown.coach = ("Mr Ripper")

    response = @pottstown.coach
    assert_equal("Mr Ripper", response)

  end

def test_add_new_player

@pottstown.add_new_player("Literally Venison")

assert_equal(4, @pottstown.players.size)
end

def test_find_player

response = @pottstown.find_player("Billy Beef")

assert_equal("Billy Beef has been found", response)

end


def test_award_points

  @pottstown.award_points(true)

assert_equal(3, @pottstown.league)
end










end