require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSports_team < Minitest::Test  

  def setup
    @pottstown = SportsTeam.new("Pottstown Butchers", ["Billy Beef", "Peter Pork", "Larry Lamb"], "Mr Lecter")
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











end